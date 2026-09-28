INSERT INTO Activiteit VALUES
(1, 'Workshop Java Basics', 'Introductie Java', 30, 'workshop', NULL, NULL),
(2, 'AI Intro Lecture', 'Basis AI-concepten', 200, 'lecture', NULL, NULL),
(3, 'Python Bootcamp', 'Intensieve Python-training', 25, 'bootcamp', NULL, NULL),
(4, 'Scrum Training', 'Agile Scrum introductie', 20, 'training', NULL, NULL);

INSERT INTO Locatie VALUES
(1, 'Lab 1', 'Campusgebouw B'),
(2, 'Auditorium', 'Hoofdgebouw A'),
(3, 'Computerzaal', 'Techhal C'),
(4, 'Vergaderzaal', 'Kantoorvleugel D');

INSERT INTO ActiviteitMoment VALUES
(1, '2026-10-01', '2026-10-01 09:00', '2026-10-01 12:00', 1, 1),
(2, '2026-10-05', '2026-10-05 14:00', '2026-10-05 16:00', 2, 2),
(3, '2026-11-10', '2026-11-10 10:00', '2026-11-10 17:00', 3, 3),
(4, '2026-12-01', '2026-12-01 09:00', '2026-12-01 13:00', 4, 4);

INSERT INTO Categorie VALUES
(1, 'Programmeerworkshop', 'Workshops over programmeren'),
(2, 'Lezing', 'Informatieve sessies'),
(3, 'AI', 'Kunstmatige intelligentie'),
(4, 'Bootcamp', 'Intensieve trainingsdagen'),
(5, 'Training', 'Professionele vaardigheidstraining'),
(6, 'Agile', 'Agile methodieken');

INSERT INTO ActiviteitCategorie (catnr, acode) VALUES
(1, 1),   -- A001 → C01
(2, 2),   -- A002 → C02
(3, 2),   -- A002 → C03
(4, 3),   -- A003 → C04
(1, 3),   -- A003 → C01
(5, 4),   -- A004 → C05
(6, 4);   -- A004 → C06



INSERT INTO Tag VALUES
(1, 'beginner'),
(2, 'java'),
(3, 'ai'),
(4, 'lecture'),
(5, 'python'),
(6, 'intensief'),
(7, 'scrum'),
(8, 'teamwork');

INSERT INTO ActiviteitTag VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8);

INSERT INTO Persoon VALUES
(101, 'Student', 101, 'Uni NL', NULL, NULL),
(201, 'Extern', NULL, NULL, 'WebConsult BV', NULL),
(301, 'Medewerker', NULL, NULL, NULL, 301),
(102, 'Student', 102, 'Uni NL', NULL, NULL),
(202, 'Extern', NULL, NULL, 'DataCorp', NULL),
(302, 'Medewerker', NULL, NULL, NULL, 302),
(103, 'Student', 103, 'Uni NL', NULL, NULL),
(203, 'Extern', NULL, NULL, 'Freelance', NULL),
(303, 'Medewerker', NULL, NULL, NULL, 303),
(104, 'Student', 104, 'Uni NL', NULL, NULL),
(204, 'Extern', NULL, NULL, 'SoftGroup', NULL),
(304, 'Medewerker', NULL, NULL, NULL, 304);

INSERT INTO Contactkanaal VALUES
(1, NULL, 's101@uni.nl', 101),
(2, 0612345678, NULL, 201),
(3, NULL, 'm301@company.nl', 301),
(4, NULL, 's102@uni.nl', 102),
(5, NULL, 'e202@mail.com', 202),
(6, 0611122233, NULL, 302),
(7, NULL, 's103@uni.nl', 103),
(8, 0699998888, NULL, 203),
(9, NULL, 'm303@company.nl', 303),
(10, NULL, 's104@uni.nl', 104),
(11, NULL, 'e204@mail.com', 204),
(12, 0612349988, 'e304@mail.com', 304);

INSERT INTO Deelnamevorm VALUES
(1, 'Gratis'),
(2, 'Betaald'),
(3, 'Early Bird');

INSERT INTO A_Status VALUES
(1, 'geregistreerd', 0, 'Deelname bevestigd'),
(2, 'betaald', 4, 'Betaling ontvangen'),
(3, 'geannuleerd', -1, 'Afmelding'),
(4, 'wachtlijst', 0, 'Capaciteit vol');

INSERT INTO Aanmelding VALUES
(1, '2026-10-01', 1, 1, 101, 1),
(2, '2026-10-01', 2, 1, 201, 2),
(3, '2026-10-01', 1, 1, 301, 3),
(4, '2026-10-05', 1, 2, 102, 1),
(5, '2026-10-05', 2, 2, 202, 2),
(6, '2026-10-05', 1, 2, 302, 4),
(7, '2026-11-10', 2, 3, 103, 2),
(8, '2026-11-10', 2, 3, 203, 3),
(9, '2026-11-10', 1, 3, 303, 1),
(10, '2026-12-01', 1, 4, 104, 1),
(11, '2026-12-01', 2, 4, 204, 2),
(12, '2026-12-01', 1, 4, 304, 4);


