-- Ciro Brodmann, Lukas Buchli, Felix Reiniger

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
           ('DMI', 'Doofe Mitarbeiter Idealisieren - Lerne hier so besessen von deinen dümmsten Mitarbeitern zu werden, dass du sie gar nicht mehr rausschmeissen möchtest'),
           ('AutSpr', 'Sprachkurs um endlich die Gefühle und Bedürfnisse deines Autos zu verstehen');

insert into "LecturerModule" ("Lecturer", "Module")
    values (1, 1),
           (6, 5),
           (3, 4),
           (2, 2),
           (4, 6),
           (5, 3),
           (7, 7);

insert into "Rating" ("Rating", "Student", "Lecturer")
    values ('Geht einem nur auf die Nerven und kann nichts. Bitte austauschen', 3, 6),
           ('Ist in FP viel zu sehr ins Detail gegangen. Bin nicht mitgekommen', 1, 3),
           ('Hat die Prüfung extra schwierig gemacht. Bin voll durchgefallen.', 2, 5),
           ('War unterhaltsam. Ein bisschen zu viel Datenbanken', 7, 1),
           ('Gute Vorlesung. Episch.', 7, 4),
           ('Habe die ganze Vorlesung Meelee gespielt. Kann ich echt empfehlen', 5, 2),
           ('Fachliche katastrophe', 6, 6);