# Pewlett-Hackard-Analysis

## Overview of the Analysis
The purpose of this project is to analyze the human resource data of a tech giant company Pewlett Hackard to prepare for the “silver tsunami” as many current employees reach retirement age. So after creating an employee database with SQL schema, the goal of the analysis is twofold: (1) determine the number of retiring employees and their position titles, and (2) identify employees who are eligible to participate in a mentorship program. 

## Results
1. Table of retiring employee info with employee number, first name, last name, title, title from date, and title to date for eache employee who was born between 1952 and 1955. 
* [Complete table](Data/retirement_titles.csv)
* Data sample
![Data sample](Data/retirement_titles.png) 

2. Table of retiring employees with only the most recent title, by removing the duplicate entries
72,458 retiring 
1549 mentors

### Weather Database
I generated a set of 2,000 random latitudes and longitudes, retrieved the nearest cities from citipy module, and then performed an API call with the OpenWeatherMap to retrieve the following weather information for each of the 692 cities: latitude and longitude, maximum temperature, percent humidity, percent cloudiness, wind speed, and weather description. Lastly, I added the data to a new DataFrame and exported it as a [.csv file](Weather_Database/WeatherPy_Database.csv). 

### Vacation Itinerary 
I used the Google Directions API and created a travel itinerary showing the route between four cities in Brazil chosen from the customer's possible travel destinations. 
![WeatherPy_travel_map](Vacation_Itinerary/WeatherPy_travel_map.png)
Lastly, I created a marker layer map with a pop-up marker for each city on the itinerary. 
![WeatherPy_travel_map_markers](Vacation_Itinerary/WeatherPy_travel_map_markers.png)

## Summary
The analysis will help future approval of Pewlett-Hackard by generating a list of all employees eligible for the retirement package.  

## Resources
Software:
* PostgreSQL 12
* pgAdmin 4
 
