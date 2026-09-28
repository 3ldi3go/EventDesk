--selecteer alle activiteiten titels en categorie titels waar de categorie hoort bij de activiteit op alfabetische volgorde van Categorie
select A.titel, C.titel
from Activiteit A
join ActiviteitCategorie AC on A.acode = AC.acode
join Categorie C on AC.catnr = C.catnr
order by C.titel;

--selecteer alle telefoonnummers van de externe werkers
select c.telefoonnummer
from Contactkanaal c
join Persoon p on c.pcode = p.pcode
where p.bedrijf is not null and c.telefoonnummer is not null;

--selecteer alle unique datums van een gratis aanmelding
select distinct a.datum
from Aanmelding a
join Deelnamevorm d on a.dnr = d.dnr
where d.soort = 'Gratis';

--selecteer de eerste twee locaties die een activiteit zullen hebben
select top 2 l.naam, l.adres
from Locatie l
join ActiviteitMoment am on l.lcode = am.lcode
order by am.datum;

--selecteer alle personen die meedoen aan een activiteit dat over python gaat
select p.pcode
from Persoon p
join Aanmelding am on p.pcode = am.pcode
join Activiteit a on am.acode = a.acode
where a.titel like '%python%';