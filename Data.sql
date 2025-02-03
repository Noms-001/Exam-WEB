-- Ajout des éleveurs
INSERT INTO Eleveur (nom, capital) VALUES
('Jean Dupont', 10000.00),
('Marie Curie', 15000.00),
('Paul Martin', 12000.00);

-- Ajout des aliments
INSERT INTO Aliment (nom, prix, gain_poids) VALUES
('Maïs', 50.00, 1.50),
('Orge', 40.00, 1.20),
('Soja', 60.00, 1.80);

-- Ajout des catégories d'animaux
INSERT INTO Categorie_animal (nom, url, icon, min_poids, max_poids, perte_poids, max_jour, prix_jour, IdAliment) VALUES
('Bœuf', 'boeuf.jpg', 'boeuf_icon.png', 200.00, 800.00, 0.50, 100, 5.00, 1),
('Porc', 'porc.jpg', 'porc_icon.png', 50.00, 300.00, 0.30, 80, 3.00, 2),
('Poulet', 'poulet.jpg', 'poulet_icon.png', 2.00, 5.00, 0.10, 40, 1.00, 3);

-- Ajout des animaux
INSERT INTO Animal (init_poids, nom, IdCategorie) VALUES
(250.00, 'Boeuf Angus', 1),
(100.00, 'Cochon Normand', 2),
(3.50, 'Poulet Fermier', 3);

-- Ajout des transactions
INSERT INTO Transaction (type, dateTransaction, IdEleveur, IdAnimal) VALUES
(1, '2025-02-01', 1, 1), 
(1, '2025-02-02', 2, 2), 
(1, '2025-02-03', 3, 3);

-- Ajout des achats d’aliments
INSERT INTO Achat (dateAchat, IdAnimal, IdAliment, IdEleveur) VALUES
('2025-02-02', 1, 1, 1),
('2025-02-03', 2, 2, 2),
('2025-02-04', 3, 3, 3);
