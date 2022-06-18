CREATE DATABASE IPL;

SHOW DATABASES;

USE IPL;

# 1. Create a table named ‘matches’ with appropriate data types for columns
CREATE TABLE matches(
	id	int,
    city varchar(20),	
    _date date,	
    player_of_match	varchar(20),
    venue varchar(60),		
    neutral_venue int,		
    team1 varchar(50),		
    team2 varchar(50),		
    toss_winner varchar(50),		
    toss_decision varchar(10),		
    winner varchar(50),	
    result varchar(10),		
    result_margin int,	
    eliminator varchar(10),		
    method varchar(10),		
    umpire1	varchar(30),	
    umpire2 varchar(30)
    );

desc matches;

# 2. Create a table named ‘deliveries’ with appropriate data types for columns.
CREATE TABLE deliveries(
	id	int,
    inning int,
    _over int,	
    ball int,
    batsman	varchar(30),
    non_striker	varchar(30),
    bowler	varchar(30),
    batsman_runs int,	
    extra_runs	int,
    total_runs	int,
    is_wicket	int,
    dismissal_kind	varchar(30),
    player_dismissed varchar(30),
    fielder	varchar(30),
    extras_type	varchar(30),
    batting_team varchar(50),	
    bowling_team varchar(50)
    );
    
# 3. Import data from CSV file ’IPL_matches.csv’ attached in resources to ‘matches’
SELECT *
from matches;

# 4. Import data from CSV file ’IPL_Ball.csv’ attached in resources to ‘deliveries’
SELECT *
from deliveries;

# 5. Select the top 20 rows of the deliveries table.
SELECT *
FROM deliveries
LIMIT 20;

# 6. Select the top 20 rows of the matches table.
SELECT *
FROM matches
LIMIT 20;

# 7. Fetch data of all the matches played on 2nd May 2013.
SELECT *
FROM matches
WHERE _date = '2013-05-02';

# 8. Fetch data of all the matches where the margin of victory is more than 100 runs
SELECT * FROM matches
WHERE result_margin > 100;

# 9. Fetch data of all the matches where the final scores of both teams tied and order it in descending order of the date.
SELECT *
FROM matches
WHERE result = 'tie'
ORDER BY _date desc; 

# 10. Get the count of cities that have hosted an IPL match
SELECT count(DISTINCT city)
FROM matches;

# 11. Get the count of matches played in each city and sort by most matches played in a city.
SELECT city, count(id) as 'Matches played'
FROM matches 
GROUP BY city
ORDER BY count(id) desc;

