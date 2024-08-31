Update CovidDeaths
set total_cases=NULL
Where total_cases=0;

--looking at total cases vs total deaths for country
select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as DeathPercentage
from CovidDeaths