--Total cases vs total population

select location,date,population,total_cases,(total_cases/population)*100 as 'percentage of cases'
from CovidDeaths
