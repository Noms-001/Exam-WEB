CREATE TABLE Eleveur(
   IdEleveur INT AUTO_INCREMENT,
   nom VARCHAR(50)  NOT NULL,
   capital DECIMAL(15,2)   NOT NULL,
   PRIMARY KEY(IdEleveur)
);

CREATE TABLE Aliment(
   IdAliment INT AUTO_INCREMENT,
   nom VARCHAR(50)  NOT NULL,
   prix DECIMAL(15,2)   NOT NULL,
   gain_poids DECIMAL(15,2)   NOT NULL,
   PRIMARY KEY(IdAliment)
);

CREATE TABLE Categorie_animal(
   IdCategorie INT AUTO_INCREMENT,
   nom VARCHAR(50)  NOT NULL,
   url VARCHAR(50)  NOT NULL,
   icon VARCHAR(50)  NOT NULL,
   min_poids DECIMAL(15,2)   NOT NULL,
   max_poids DECIMAL(15,2)   NOT NULL,
   perte_poids DECIMAL(15,2)   NOT NULL,
   max_jour INT NOT NULL,
   prix_jour DECIMAL(15,2)   NOT NULL,
   IdAliment INT NOT NULL,
   PRIMARY KEY(IdCategorie),
   UNIQUE(IdAliment),
   FOREIGN KEY(IdAliment) REFERENCES Aliment(IdAliment)
);

CREATE TABLE Animal(
   IdAnimal INT AUTO_INCREMENT,
   init_poids DECIMAL(15,2)   NOT NULL,
   nom VARCHAR(50)  NOT NULL,
   IdCategorie INT NOT NULL,
   PRIMARY KEY(IdAnimal),
   FOREIGN KEY(IdCategorie) REFERENCES Categorie_animal(IdCategorie)
);

CREATE TABLE Transaction(
   IdTransaction INT AUTO_INCREMENT,
   type BOOLEAN NOT NULL,
   dateTransaction DATE NOT NULL,
   IdEleveur INT NOT NULL,
   IdAnimal INT NOT NULL,
   PRIMARY KEY(IdTransaction),
   UNIQUE(IdAnimal),
   FOREIGN KEY(IdEleveur) REFERENCES Eleveur(IdEleveur),
   FOREIGN KEY(IdAnimal) REFERENCES Animal(IdAnimal)
);

CREATE TABLE Achat(
   IdAchat INT AUTO_INCREMENT,
   dateAchat DATE NOT NULL,
   IdAnimal INT NOT NULL,
   IdAliment INT NOT NULL,
   IdEleveur INT NOT NULL,
   PRIMARY KEY(IdAchat),
   UNIQUE(IdAnimal),
   FOREIGN KEY(IdAnimal) REFERENCES Animal(IdAnimal),
   FOREIGN KEY(IdAliment) REFERENCES Aliment(IdAliment),
   FOREIGN KEY(IdEleveur) REFERENCES Eleveur(IdEleveur)
);
