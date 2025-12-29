CREATE DATABASE gestion_commandes;
USE gestion_commandes;
CREATE TABLE Client (
    id_client INT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    telephone VARCHAR(20),
    adresse VARCHAR(100)
);
CREATE TABLE Command (
    id_command INT PRIMARY KEY,
    date_command DATE NOT NULL,
    status VARCHAR(30) NOT NULL,
    id_client INT NOT NULL,
    FOREIGN KEY (id_client)
        REFERENCES Client(id_client)
);
CREATE TABLE Plate (
    id_plate INT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(8,2) NOT NULL,
    categorie VARCHAR(50)
);
CREATE TABLE command_type (
    id_command INT,
    id_plate INT,
    quantity INT NOT NULL,
    PRIMARY KEY (id_command, id_plate),
    FOREIGN KEY (id_command)
        REFERENCES Command(id_command),
    FOREIGN KEY (id_plate)
        REFERENCES Plate(id_plate)
);

