select location,max(cast(total_deaths as int)) as Total_Death_Count
from CovidDeaths
where continent is not null
group by location
order by Total_Death_Count Desc
