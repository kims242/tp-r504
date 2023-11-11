CREATE DATABASE IF NOT EXISTS sae51db; USE sae51db;
CREATE TABLE "marque" (
  "id_marque" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "nom_marque" varchar(200)
);

CREATE TABLE "os" (
  "id_os" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "nom_os" varchar(200)
);

CREATE TABLE "software" (
  "id_software" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "nom_software" varchar(200)
);

CREATE TABLE "software_installe" (
  "id_software_installe" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "nom_software_installe" varchar(200)
);

CREATE TABLE "PC" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "PC_marque" int,
  "date_achat" date,
  "user" varchar(200),
  "PC_os" int,
  "PC_software_installe" int
);

CREATE TABLE "technicien" (
  "id_technicien" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "nom_technicien" varchar(200),
  "PC_technicien" int,
  "date_maintenance" date
);

ALTER TABLE "PC" ADD FOREIGN KEY ("PC_os") REFERENCES "os" ("id_os");

ALTER TABLE "PC" ADD FOREIGN KEY ("PC_marque") REFERENCES "marque" ("id_marque");

ALTER TABLE "PC" ADD FOREIGN KEY ("PC_software_installe") REFERENCES "software_installe" ("id_software_installe");

ALTER TABLE "software_installe" ADD FOREIGN KEY ("nom_software_installe") REFERENCES "software" ("id_software");

ALTER TABLE "technicien" ADD FOREIGN KEY ("PC_technicien") REFERENCES "PC" ("id");

