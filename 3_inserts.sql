-- Ciro Brodmann, Lukas Buchli, Felix Reiniger

insert into student values (22173270, 'Lukas', 'Fernsehli', 'lukas.fernsehli@west.ch'),
                           (22173271, 'Felix', 'Schweiniger', 'felix.schweiniger@west.ch'),
                           (22173272, 'Ciro', 'de la Baguette', 'ciro.delabaguette@west.ch'),
                           (23173273, 'Noah', 'Neuenhauser', 'noah.neuenhauser@west.ch'),
                           (22173274, 'Aladin', 'Aduoduob', 'aladin.aduoduob@west.ch'),
                           (22173275, 'Clarissa', 'Sullicar', 'clarissa.sullicar@west.ch'),
                           (22173276, 'Fabio', 'Grillmeister', 'fabio.grillmeister@west.ch');

insert into lecturer (first_name, last_name, email_address, short_name)
    values ('Stefan', 'Estrig', 'stefan.estrig@west.ch', 'STEST'),
           ('Frieder', 'Füllung', 'frieder.fullung@west.ch', 'FRFUL'),
           ('Farhad', 'Facebook', 'farhad.facebook@west.ch', 'FAFAC'),
           ('Markus', 'Schämig', 'markus.schamig@west.ch', 'MASCH'),
           ('Olaf', 'Gartenfrau', 'olaf.gartenfrau@west.ch', 'OLGAR'),
           ('Jöel', 'Schlapp', 'joel.schlapp@west.ch', 'JOSCH'),
           ('Vulkan', 'Döner', 'vulkan.doner@west.ch', 'VUDON'),
           ('Laurent', 'Vegetarier', 'laurent.vegetarier@west.ch', 'LAVEG');

insert into module (identifier, description)
    values ('Dbs1', 'Unterricht über Das Beste System 1'),
           ('OOP1', 'OOPS I did it again v1'),
           ('RheKi', 'Rhecht K(om)ische Vorlesung mit vielen random Anekdoten über das wunderliche Leben des Bruno Sternath'),
           ('FP', 'Fuck Paper – Weiterbildung für Dozenten. Bringt ihnen bei, digitale Prüfungen zu schreiben, damit sie den armen Studenten nicht mehr sadistisch beim Auf-Papier-Programmieren zusehen können'),
           ('VELO1', 'Rennen mit dem legendären WEST-Velo™ um den Campus. Der Schnellste gewinnt das Legendäre WEST-Velo™ (oder darf es zumindest auf Ricardo ersteigern).'),
           ('DMI', 'Doofe Mitarbeiter Idealisieren - Lerne hier so besessen von deinen dümmsten Mitarbeitern zu werden, dass du sie gar nicht mehr rausschmeissen möchtest'),
           ('AutSpr', 'Sprachkurs um endlich die Gefühle und Bedürfnisse deines Autos zu verstehen');

insert into lecturer_module (lecturer, module)
    values (1, 1),
           (6, 5),
           (3, 4),
           (2, 2),
           (4, 6),
           (5, 3),
           (7, 7);

insert into rating (rating, student, lecturer)
    values ('Geht einem nur auf die Nerven und kann nichts. Bitte austauschen', 22173272, 6),
           ('Ist in FP viel zu sehr ins Detail gegangen. Bin nicht mitgekommen', 22173270, 3),
           ('Hat die Prüfung extra schwierig gemacht. Bin voll durchgefallen.', 22173271, 5),
           ('War unterhaltsam. Ein bisschen zu viel Datenbanken', 22173276, 1),
           ('Gute Vorlesung. Episch.', 22173276, 4),
           ('Habe die ganze Vorlesung Melee gespielt. Kann ich echt empfehlen', 22173274, 2),
           ('Fachliche katastrophe', 22173275, 6);
