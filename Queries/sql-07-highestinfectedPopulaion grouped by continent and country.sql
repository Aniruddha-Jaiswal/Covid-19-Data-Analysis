select continent,location,max((total_cases/population)*100) as highest_percentage_of_infected_population
from CovidDeaths
where continent is not null
group by continent,location
having  max((total_cases/population)*100) is not NULL
order by 3 DESC