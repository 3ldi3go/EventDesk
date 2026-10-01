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

--selecteer alle activiteiten die plaatsvinden tussen 1 november en 30 december 2026
select a.acode, a.titel, am.datum
from Activiteit a
join ActiviteitMoment am on a.acode = am.acode
where am.datum between '2026-11-01' and '2026-12-30';

--selecteer alle personen die zich hebben aangemeld voor activiteiten 1, 2 of 3
select p.pcode, p.soort
from Persoon p
join Aanmelding a on p.pcode = a.pcode
where a.acode in (1, 2, 3);

--selecteer alle activiteiten die niet in de categorieën AI, Training of Bootcamp vallen
select distinct a.acode, a.titel
from Activiteit a
where a.acode not in (
    select ac.acode
    from ActiviteitCategorie ac
    join Categorie c on ac.catnr = c.catnr
    where c.titel in ('AI', 'Training', 'Bootcamp')
);

--selecteer alle personen zonder telefoonnummer
select p.pcode, p.soort
from Persoon p
join Contactkanaal c on p.pcode = c.pcode
where c.telefoonnummer is null;

--selecteer alle aanmeldingen met datum als tekst
select a.anr, cast(a.datum as varchar(20)) as datum_tekst
from Aanmelding a;

--selecteer alle locaties met samengevoegde naam en adres
select l.lcode, concat(l.naam, ' - ', l.adres) as locatie_info
from Locatie l;
