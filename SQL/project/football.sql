create database football;
use football;

CREATE TABLE Player_Performance (
    Appearance_id varchar(50),
    Player_current_club_id VARCHAR(50),
    date varchar(30),
    Player_name VARCHAR(50),
    compitition_id varchar(10),
    yellow_cards varchar(5),
    red_cards varchar(5),
    goal varchar(5),
    assists varchar(5),
    minutes_played varchar(5)); 
    
load data infile "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\football.csv"
into table player_performance
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- (1)FIND all records from the table?

SELECT * FROM Player_Performance;

-- (2)Find the names of all players?

SELECT Player_name
FROM Player_Performance;

-- (3)find all performances for a specific player name willem  janssen?

SELECT * FROM Player_Performance 
WHERE Player_name = 'willem janssen';

-- (4)Find all performances for a player with more than 1 goal?

SELECT * FROM Player_Performance
WHERE goal > 1;

-- (5)find the total number of goals scored by each player?

SELECT Player_name, 
SUM(goal) AS Total_Goals FROM Player_Performance
 GROUP BY Player_name;
 
 -- (6)find the total number of yellow cards for each player?
 
 SELECT Player_name,
 SUM(yellow_cards) AS Total_Yellow_Cards
 FROM Player_Performance
 GROUP BY Player_name;
 
 -- (7)Find all players who have played over 80 minutes?
 
 SELECT * FROM Player_Performance
 WHERE minutes_played > 80;
 
 -- (8)find the average number of minutes played per player?
 
 SELECT Player_name
 AS Avg_Minutes_Played FROM Player_Performance GROUP BY Player_name;
 
 -- (9)List all players who have scored 0 goals?
 
 SELECT * FROM Player_Performance
 WHERE goal = 0;
 
 -- (10)find performances  within a specific date 03-07-2012 TO 09-07-2012?
 
 SELECT * FROM Player_Performance
 WHERE DATE BETWEEN '03-07-2012' AND '09-07-2012';
 
 
 -- (11)find all performances in 22-07-2012?
 
 SELECT * FROM Player_Performance 
 WHERE date = '22-07-2012';
 
 -- (12) Find players who played on 22-07-2012 date and scored at least one goal?
 
 SELECT * FROM Player_Performance
 WHERE date = '22-07-2012' AND goal > 0;
 
 -- (13)Find the total number of yellow cards?

 SELECT SUM(yellow_cards) 
 FROM Player_Performance ;
 
 -- (14)Find all performances in 2012? 
 
 SELECT * FROM Player_Performance
 WHERE YEAR(date) =2012;
 
 -- (15)find the average number of yellow cards in March 2012?
 
 SELECT AVG(yellow_cards) FROM Player_Performance
 WHERE YEAR(date) = 2012 AND MONTH(date) = 3;
 
 -- (16)find the total number of assists by each player?
 
 SELECT Player_name, SUM(assists) AS Total_Assists
 FROM Player_Performance
 GROUP BY Player_name;
 
 -- (17)find the total minutes PLAYED?
 
 SELECT SUM(minutes_played) AS Total_Minutes 
 FROM Player_Performance ;
 
 -- (18)Find the player with the MAX goals?
 
 SELECT Player_name, MAX(goal) AS Total_Goals 
 FROM Player_Performance
 GROUP BY Player_name;

-- (19)Find the player with the most yellow cards from 5 desc order?

SELECT Player_name, SUM(yellow_cards) AS Total_Yellow_Cards
 FROM Player_Performance 
 GROUP BY Player_name
 ORDER BY Total_Yellow_Cards  desc LIMIT 5;
 
 -- (20)Find the player with the most red cards desc order limit 3?
 
 SELECT Player_name, SUM(red_cards) AS Total_Red_Cards
 FROM Player_Performance
 GROUP BY Player_name
 ORDER BY Total_Red_Cards DESC LIMIT 3;
 
 -- (21)which players with no yellow or red cards?
 
 SELECT * FROM Player_Performance
 WHERE yellow_cards = 0 AND red_cards = 0;
 
 -- (22)total assist all player?
 
 SELECT SUM(assists) AS Total_Assists
 FROM Player_Performance;
 

 -- (23)Check for players with missing performance data, missing goals or assists?
 
 SELECT * FROM Player_Performance 
 WHERE goal IS NULL OR assists IS NULL;
 
 -- (24)Find players who have played but never scored a goal:

SELECT * FROM Player_Performance 
WHERE goal = 0;

-- (25) Get the total number of goals scored by each player in BESC competition?

SELECT Player_name, SUM(goal) AS Total_Goals
 FROM Player_Performance 
 WHERE compitition_id = 'BESC'
 GROUP BY Player_name;
 
 -- (26)Get a list of all players who have played for 964 club:
 
 SELECT DISTINCT Player_name
 FROM Player_Performance
 WHERE Player_current_club_id = '964';
 
 -- (27) FIND the names and appearance IDs of all players in the table?
 
 SELECT Player_name, Appearance_id 
 FROM Player_Performance;
 
 -- (28)Find all performances for Aleksandr Kerzhakov?
 
 SELECT * FROM Player_Performance
 WHERE Player_name = 'Aleksandr Kerzhakov';
 
 -- (29) List all the unique players that appeared in the table.
 
 SELECT DISTINCT Player_name
 FROM Player_Performance;
 
 -- (30)List all players who received more than 1 yellow cards.
 
 SELECT Player_name, SUM(yellow_cards) AS Total_Yellow_Cards
FROM Player_Performance
GROUP BY Player_name
HAVING Total_Yellow_Cards > 1;

-- INSIGHT
-- This SQL project analyze all football players performance data was stored. 
-- It includes queries to retrieve player status, filter performances by goals, assists,
-- and discipline, and analyze time.

-- insights includes:
-- highest goal scorer in the tournament:auraclien joachim-5
-- total assist in the tournament: 150
-- most yellow card recive: Vyacheslav Checher-2,Igor Khaymanov-2,Lucas pacrez-2
-- most red card recive: Cillian Sheridan-1,Claudemir-1,Sergiy Dolganskyi-1
-- highest min played in tournament: Roland Gigolaev-100m
-- total min played all player in tournament: 68634
-- highest no. of assist player:Nacer Chadli-3,Markus Henriksen-2,Ivan Sesar-2
--  highest min played player club_id: 3725


 















 

 






 
 

 





    
    
    