--temp table
drop table if exists #percentpopulationvaccinated;

create table #percentpopulationvaccinated(
	continent nvarchar(255),
	location nvarchar(255),
	date datetime,
	population numeric,
	new_vaccinations numeric,
	rolling_vaccination numeric
)

Insert into #percentpopulationvaccinated
select cd.continent,cd.location,cd.date,cd.population,cv.new_vaccinations,sum(convert(float,cv.new_vaccinations)) over (Partition by cd.location order by cd.date) as Rolling_total_vaccination
from CovidDeaths cd inner join CovidVaccination cv on cd.location=cv.location and cd.date=cv.date
where cd.continent is not null 

select *,(rolling_vaccination/population)*100 as percentag
from #percentpopulationvaccinated
where rolling_vaccination is not null
