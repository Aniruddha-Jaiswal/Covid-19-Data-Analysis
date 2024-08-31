select location,max(total_cases) as Highest_total_Cases,max(total_deaths) as Highest_total_deaths
from CovidDeaths
where continent is not null
group by location--,continent
order by Highest_total_deaths

