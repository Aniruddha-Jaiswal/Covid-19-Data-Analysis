select location,max(total_deaths) as Total_Death_Count
from CovidDeaths
where continent is null
group by location
order by Total_Death_Count Desc