--countries with highest infection rate and highest total_cases

select location,population,max(total_cases) as HighestCases,max((total_cases/population)*100) as percentage_population_infected
from CovidDeaths
group by location,population
order by percentage_population_infected DESC