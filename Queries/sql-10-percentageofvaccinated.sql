select cd.location,max(cd.population) as population,max(cv.total_vaccinations) as vaccination,(max(cv.total_vaccinations)/max(cd.population))*100 as percentage_vaccinated
from CovidDeaths cd inner join CovidVaccination cv on cd.location=cv.location and cd.date=cv.date
where cd.continent is not null
group by cd.location,cd.continent
order by percentage_vaccinated DESC