insert into "Student" values (22173270, 'Lukas', 'Fernsehli', 'lukas.fernsehli@west.ch'),
                             (22173271, 'Felix', 'Ferkler', 'felix.ferkler@west.ch'),
                             (22173272, 'Ciro', 'de la Baguette', 'ciro.delabaguette@west.ch'),
                             (23173273, 'Noah', 'Neuenhauser', 'noah.neuenhauser@west.ch'),
                             (22173274, 'Aladin', 'Aduoduob', 'aladin.aduoduob@west.ch'),
                             (22173275, 'Clarissa', 'Sullicar', 'clarissa.sullicar@west.ch'),
                             (22173276, 'Fabio', 'Grillmeister', 'fabio.grillmeister@west.ch');

insert into "Lecturer" ("FirstName", "LastName", "EmailAddress", "ShortName")
    values ('Stefan', 'Estrig', 'stefan.estrig@west.ch', 'STEST'),
           ('Frieder', 'Füllung', 'frieder.fuellung@west.ch', 'FRFUE'),
           ('Fahrrad', 'Facebook', 'fahrrad.facebook@west.ch', 'FAFAC'),
           ('Markus', 'Schämig', 'markus.schämig@west.ch', 'MASCH'),
           ('Olaf', 'Gartenfrau', 'olaf.gartenfrau@west.ch', 'OLGAR'),
           ('Jöel', 'Schlapp', 'joeel.schlapp@west.ch', 'JOSCH'),
           ('Vulkan', 'Döner', 'vulkan.doener@turkei.ch', 'ARSCH'), -- ist nur lehrbeauftragter, daher gelten konsistenzbedingungen für kürzel nicht :)
           ('Mirko', 'Härdöpfelstock', 'mirko.haerdoepfelstock@west.ch', 'MIHAE'); -- hier noch ein achter, falls ^ punktabzug geben würde
            -- ^ ja, de letscht isch schlächt, chönder gern ändere

insert into "Module" ("Identifier", "Description")
    values ('Dbs1', 'Unterricht über Das Beste System 1'),
           ('OOP1', 'OOPS I did it again v1'),
           ('RheKi', 'Rhecht K(om)ische Vorlesung mit vielen random Anekdoten über das wunderliche Leben des Bruno Sternath'),
           ('FP', 'Fuck Paper – Weiterbildung für Dozenten. Bringt ihnen bei, digitale Prüfungen zu schreiben, damit sie den armen Studenten nicht mehr sadistisch beim Auf-Papier-Programmieren zusehen können'),
           ('VELO1', 'Rennen mit dem legendären WEST-Velo™ um den Campus. Der Schnellste gewinnt das Legendäre WEST-Velo™ (oder darf es zumindest auf Ricardo ersteigern).'),
           ('DMI', 'TODO ich bruch da no es akronym danke vielmal @Felix @Lukas me tired me brain no work well no more'),
           ('AutSpr', 'TODO');

insert into "LecturerModule" ("Lecturer", "Module")
    values (1, 1),
           (6, 5),
           (3, 4),
           (2, 2),
           (4, 6),
           (5, 3),
           (7, 7);

-- insert into "Rating" ("Rating", "Student", "Lecturer")
--     values ()
