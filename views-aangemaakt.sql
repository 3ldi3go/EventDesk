--een overzicht van alle activiteiten en hun locaties, datum en categorieën
create view ActiviteitOverzicht as
select 
    a.acode,
    a.titel,
    a.vorm,
    l.naam as locatie,
    am.datum,
    am.startmoment,
    am.eindmoment,
    c.titel as categorie,
    t.naam as tag
from Activiteit a
join ActiviteitMoment am on a.acode = am.acode
join Locatie l on am.lcode = l.lcode
join ActiviteitCategorie ac on a.acode = ac.acode
join Categorie c on ac.catnr = c.catnr
join ActiviteitTag ata on a.acode = ata.acode
join Tag t on ata.tnr = t.tnr;

--een overzicht van alle aanmeldingen en hun statussen
create view AanmeldStatusOverzicht as
select
    an.anr,
    an.datum as aanmelddatum,
    p.pcode,
    p.soort as persoonsoort,
    a.acode,
    a.titel as activiteit,
    d.soort as deelnamevorm,
    s.registratie as status,
    s.omschrijving_status
from Aanmelding an
join Persoon p on an.pcode = p.pcode
join Activiteit a on an.acode = a.acode
join Deelnamevorm d on an.dnr = d.dnr
join A_Status s on an.snr = s.snr;

