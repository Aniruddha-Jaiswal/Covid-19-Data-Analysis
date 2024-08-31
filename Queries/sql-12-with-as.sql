--Use CTE

with popvsvac (continent,location,date,population,new_vaccination,rolling_vaccination)
as
(
select cd.continent,cd.location,cd.date,cd.population,cv.new_vaccinations,sum(convert(float,cv.new_vaccinations)) over (Partition by cd.location order by cd.date) as Rolling_total_vaccination
from CovidDeaths cd inner join CovidVaccination cv on cd.location=cv.location and cd.date=cv.date
where cd.continent is not null 
)
select *,(rolling_vaccination/population)*100 as percentage
from popvsvac
where location='India'



