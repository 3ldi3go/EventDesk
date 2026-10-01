--toon aan hoeveel mensen aan elke activiteit meedoen
select a.acode, count(p.pcode) as [aantal personen]
from Activiteit a
join Aanmelding am on a.acode = am.acode
join Persoon p on am.pcode = p.pcode
group by a.acode;

--toon het totaal aantal aanmeldingen per deelnamevorm
select d.dnr, count(am.anr) as [totaal aanmeldingen]
from Deelnamevorm d
join Aanmelding am on d.dnr = am.dnr
group by d.dnr;

--gemiddelde capaciteit per activiteitsvorm
select a.vorm, avg(a.capaciteit)
from Activiteit a
group by a.vorm;

--toon categorieen die bij meer dan 1 activiteit horen
select c.catnr, count(a.acode) as [aantal activiteiten]
from Categorie c
join ActiviteitCategorie ac on ac.catnr = c.catnr
join Activiteit a on ac.acode = a.acode
group by c.catnr
having count(a.acode) > 1;

--toon locaties waar de totale activiteitduur meer dan 6 uur is
select l.naam as locatie, sum(datediff(hour, am.startmoment, am.eindmoment)) as totale_duur_uren
from ActiviteitMoment am
join Locatie l on am.lcode = l.lcode
group by l.naam
having sum(datediff(hour, am.startmoment, am.eindmoment)) > 6;


