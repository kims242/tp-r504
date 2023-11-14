USE sae51db;

# Desactiver la verification des clés etrangeres
SET foreign_key_checks=0;

#table marque
LOAD DATA LOCAL INFILE 'shared/csv/marque.csv'
INTO TABLE marque
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom_marque);

#table os
LOAD DATA LOCAL INFILE 'shared/csv/os.csv'
INTO TABLE os
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom_os);

#table software
LOAD DATA LOCAL INFILE 'shared/csv/software.csv'
INTO TABLE software
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom_software);

#table software_installe
LOAD DATA LOCAL INFILE 'shared/csv/software_installe.csv'
INTO TABLE software_installe
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom_software_installe);

#table PC
LOAD DATA LOCAL INFILE 'shared/csv/pc.csv'
INTO TABLE PC
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(PC_marque, date_achat, user, PC_os, PC_software_installe);

#table technicien
LOAD DATA LOCAL INFILE 'shared/csv/technicien.csv'
INTO TABLE technicien
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom_technicien, PC_technicien, date_maintenance);
