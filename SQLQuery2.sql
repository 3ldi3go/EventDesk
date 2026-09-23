create table Activiteit(
acode int not null,
titel varchar(100) not null,
beschrijving varchar(1000),
capaciteit int,
vorm varchar(50) not null

primary key(acode)

constraint chk_capaciteit check(capaciteit >=0)
);

create table Locatie(
lcode int not null,
naam varchar(50),
adres varchar(100) not null,

primary key(lcode)
);

create table ActiviteitMoment(
code int not null,
datum date not null,
startmoment datetime not null,
eindmoment datetime not null,

acode int not null,
lcode int not null,

primary key(code),
foreign key(acode) references Activiteit(acode),
foreign key(lcode) references Locatie(lcode)
);

create table Categorie(
catagorienr int not null,
titel varchar(50) not null,
omschrijving varchar(100),
acode int not null,

primary key(catagorienr),
foreign key(acode) references Activiteit(acode)
);

create table Persoon(
pcode int not null,
soort varchar(20) not null,
studentID int,
school varchar(50),
bedrijf varchar(50), 
medewerkerID int,

primary key(pcode),


CONSTRAINT chk_persoon_soort CHECK (
    (soort = 'Student'    AND bedrijf IS NULL AND medewerkerID IS NULL AND studentID IS NOT NULL AND school IS NOT NULL)
 OR (soort = 'Extern'     AND studentID IS NULL AND school IS NULL AND medewerkerID IS NULL AND bedrijf IS NOT NULL)
 OR (soort = 'Medewerker' AND studentID IS NULL AND school IS NULL AND bedrijf IS NULL AND medewerkerID IS NOT NULL)
)
);

create table Contactkanaal(
cnr int
);