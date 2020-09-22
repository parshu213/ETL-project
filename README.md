# World Happiness ETL Project

## Project Proposal
Extract 2015 & 2020 World Happiness data from Kaggle.com, Transform csv files into two clean dataframes, 
Load dataframes directly from pandas into PostgreSQL and MongoDB. 
  
  ### Team Members:
    - Zac Cheatle
    - Adam Mcvey
    - Heather Wright
    - Shelly Fischer
  
  #### Tools Used:
  - Pandas
    - SQL Alchemy
    - Pymongo
  - MongoDB
  - PostgreSQL

## Extract
Imported 2015 and 2020 world happiness csv files from Kaggle.com into Pandas.

## Transfrom
- Dropped unwanted columns from 2015 & 2020, filtered for:
  - Country Name
  - Ladder Score
  - Happiness Score
  - Healthy Life Expectancy
  - Generosity
  - Perceptions of Corruptions
  - Trust
- Renamed columns in 2015
- Renamed columns in 2020
- Rounded Numerical values to (2) decimal places
- Merged data frames based on country

## Load
#### PostgreSQL
  1. Created world happiness db in PostgreSQL with seperate tables for each year.
  2. Imported data into tables directly from Pandas using SQL Alchemy engine.
  
#### MongoDB
  1. Used Pymongo to create a connection from Pandas to MongoDB local host.
  2. Converted Pandas dataframes using "to_dict" to ensure proper upload in JSON format.
  3. Included a try and except condition to verify database connection and data upload was successful for both datasets.

## Insights
An imortant aspect of completing this project was deciding which type of database would be best suited; SQL or NoSQL to store our data. 
Considering there are only two (unrelated) data tables involved, it makes more sense to use MongoDB here than a relational database like SQL. 
