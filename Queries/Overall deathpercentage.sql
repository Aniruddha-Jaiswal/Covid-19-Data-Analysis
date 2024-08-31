select sum(new_deaths) as total_deaths,sum(new_cases) as total_cases,sum(new_deaths)/sum(new_cases)*100 as 'deathpercentage'
from CovidDeaths
