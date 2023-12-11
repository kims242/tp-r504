USE dolibarr;

# Desactiver la verification des clés etrangeres
SET foreign_key_checks=0;

#table societe
LOAD DATA LOCAL INFILE 'societe.csv'
INTO TABLE llx_societe
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nom, name_alias, code_client, code_fournisseur, code_compta, code_compta_fournisseur, addres_societe,town, phone, fax, url_societe, email);
