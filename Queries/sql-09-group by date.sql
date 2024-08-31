select date,sum(new_deaths) as total_deaths,sum(new_cases) as total_cases,sum(new_deaths)/sum(new_cases)*100 as ratio
from CovidDeaths
group by date
having sum(new_cases)>0
order by ratio DESC