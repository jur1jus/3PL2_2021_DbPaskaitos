#Sukuria duomenų bazę 3PL2_mokymasis
CREATE SCHEMA `3PL2_mokymasis`;

#Naudoja 3PL2_mokymasis duomenų bazę
USE `3PL2_mokymasis`;

#Sukuria darbuotojo lentelę
CREATE TABLE Darbuotojai
(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Vardas VARCHAR(50) NOT NULL,
    Pavardė VARCHAR(50)
);

#Sukuria pareigų lentelę
CREATE TABLE Pareigos
(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Pavadinimas VARCHAR(50)
);

#Sukuria darbuotojų preigų lentelę
CREATE TABLE DarbuotojųPareigos
(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    DarbuotojoId INT,
    PareigosId INT,
    FOREIGN KEY (DarbuotojoId) REFERENCES Darbuotojai(Id),
    FOREIGN KEY (PareigosId) REFERENCES Pareigos(Id)
);


