#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi
# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games") # reset tables between tries.

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]] #skip the first row.
  then
    OPPONENT_PREEXISTS=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'") #try to select opponent (does it exist already?)
    if [[ -z $OPPONENT_PREEXISTS ]] #If opponent does not preexist
    then #add a new row for this team now
      ADDED_OTEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi

    WINNER_PREEXISTS=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'") #try to select winner (does it exist already?)
    if [[ -z $WINNER_PREEXISTS ]] #If winner does not preexist
    then
      ADDED_WTEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi

    #Get correct winner_id from teams table and store in variable
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    #Get correct opponent_id from teams table and store in variable
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    #Insert the games data rows now we have all needed data
    INSERT_GAMES_DATA=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAMES_DATA == "INSERT 0 1" ]] #If insert was succesful
    then #gives us some feedback to look at while waiting.
      echo Inserted row succesfully, $YEAR $ROUND $WINNER $OPPONENT
    fi

  fi
done