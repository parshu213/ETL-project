--- World Happiness ETL Project


drop table happiness_2015;
drop table happiness_2020;


--- 2015 data
create table happiness_2015 (country text primary key, happiness_rank_2015 int, happiness_score_2015 dec, life_expectancy_2015 dec, generosity_2015 dec, trust_2015 dec); 


--- 2020 data
create table happiness_2020 (country text primary key, happiness_score_2020 dec, life_expectancy_2020 dec, generosity_2020 dec, trust_2020 dec);



-- confirm data is uploaded and tables are accurate
select * from happiness_2015;
select * from happiness_2020;

