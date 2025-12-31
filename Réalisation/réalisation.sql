-- Création de la base
CREATE DATABASE gestion_projets;

-- Utilisation de la base
USE gestion_projets;
-- Création de la table EMPLOYE
CREATE TABLE EMPLOYE (
    id_employe INT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    role ENUM('Chef de projet', 'Developpeur', 'Designer', 'Testeur') NOT NULL
);

-- Création de la table PROJET
CREATE TABLE PROJET (
id_projet INT PRIMARY KEY,
nom_projet VARCHAR(100) NOT NULL,
description TEXT,
date_debut date not null,
date_fin date,
statu VARCHAR(30),
id_employe INT NOT null,
    FOREIGN KEY (id_employe) REFERENCES EMPLOYE(id_employe)
);
-- Création de la table TACHE
CREATE table TACHE (
    id_tache int PRIMARY key ,
    description TEXT,
date_limite date,
etat VARCHAR(30),
priorite INT,
id_projet INT NOT NULL,
id_employe INT NOT NULL,
    FOREIGN KEY (id_projet) REFERENCES PROJET(id_projet),
        FOREIGN KEY (id_employe) REFERENCES EMPLOYE(id_employe)

);
-- Insertion des employés
INSERT INTO EMPLOYE VALUES
(1, 'EL FAKIHI', 'Ayoub', 'ayoub@mail.com', 'Chef de projet'),
(2, 'EL MEDKOUR', 'Brahim', 'brahim@mail.com', 'Developpeur'),
(3, 'MESBAHI', 'Mohammed', 'mohammed@mail.com', 'Developpeur');
-- Insertion des projets
INSERT INTO PROJET VALUES
(101, 'Site E-commerce', 'Création d un site e-commerce', '2025-01-01', '2025-06-30', 'en cours', 1),
(102, 'Application Mobile', 'App de gestion RH', '2025-02-01', '2025-07-31', 'en cours', 1);
-- Insertion des tâches
INSERT INTO TACHE VALUES
(1, 'Analyse des besoins', '2025-01-15', 'terminee', 1, 101, 2),
(2, 'Developpement Front-end', '2025-03-01', 'en cours', 2, 101, 3),
(3, 'API Backend', '2025-04-01', 'en cours', 1, 102, 2);
