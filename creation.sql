create table Activiteit(
acode int not null,
titel varchar(100) not null,
beschrijving varchar(1000),
capaciteit int check(capaciteit >= 0),
vorm varchar(30),
voorwaardeNR int,
vervolgAcode int,

primary key(acode),
foreign key(voorwaardeNR) references Activiteit(acode), --klopt de logica voor recursiviteit in activiteit
foreign key(vervolgAcode) references Activiteit(acode) 
);

create table Locatie(
lcode int not null,
naam varchar(50),
adres varchar(100) not null

primary key(lcode)
);

create table ActiviteitMoment(
code int not null,
datum date not null,
startmoment datetime,
eindmoment datetime,

acode int not null,
lcode int not null

primary key(code)
foreign key(acode) references Activiteit(acode),
foreign key(lcode) references Locatie(lcode)
);

create table Categorie(
catnr int,
titel varchar(50),
omschrijving varchar(100)

primary key(catnr)
); --was repeterend maar niet meer door ActiviteitCategorie

create table ActiviteitCategorie(
catnr int,
acode int

primary key(catnr,acode),
foreign key(catnr) references Categorie(catnr),
foreign key(acode) references Activiteit(acode)
);

create table Tag(
tnr int not null,
naam varchar(50) not null

primary key(tnr),
); --was repeterend maar niet meer door ActiviteitTag

create table ActiviteitTag(
acode int,
tnr int,

primary key(acode,tnr),
foreign key(acode) references Activiteit(acode),
foreign key(tnr) references Tag(tnr)
);

create table Persoon(
pcode int not null,
soort varchar(20) not null,
studentID int,
school varchar(50),
bedrijf varchar(50),
medewerkerID int

primary key(pcode),

CONSTRAINT chk_persoon_soort CHECK (
    (soort = 'Student'    AND bedrijf IS NULL AND medewerkerID IS NULL AND studentID IS NOT NULL AND school IS NOT NULL)
 OR (soort = 'Extern'     AND studentID IS NULL AND school IS NULL AND medewerkerID IS NULL AND bedrijf IS NOT NULL)
 OR (soort = 'Medewerker' AND studentID IS NULL AND school IS NULL AND bedrijf IS NULL AND medewerkerID IS NOT NULL)
)

);

create table Contactkanaal(
cnr int,
telefoonnummer int,
email varchar(100),
pcode int,

primary key(cnr),
foreign key (pcode) references Persoon(pcode)
);

create table Deelnamevorm(
dnr int,
soort varchar(50)

primary key(dnr)
);

create table A_Status(
snr int not null,
registratie varchar(50) not null,
capaciteitsaanpassing int,
omschrijving_status varchar(500),

primary key(snr),

);

create table Aanmelding(
anr int not null,
datum date not null,
dnr int,
acode int,
pcode int,
snr int

primary key(anr)
foreign key(dnr) references Deelnamevorm(dnr),
foreign key(acode) references Activiteit(acode),
foreign key(pcode) references Persoon(pcode),
foreign key(snr) references A_Status(snr)
);




