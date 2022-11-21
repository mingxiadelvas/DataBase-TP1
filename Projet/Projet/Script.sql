  
    CREATE TABLE Livre(
        Livre_id INT PRIMARY KEY NOT NULL,
        Titre CHAR(100) NOT NULL,
        Reservation BOOLEAN,
        Emprunte BOOLEAN
    );

    CREATE TABLE Membre(
        Membre_id INT PRIMARY KEY NOT NULL,
        Nom CHAR(50) NOT NULL,
        Num_civique INT NOT NULL UNIQUE,
        Ville CHAR(50) NOT NULL,
        Rue CHAR(100) NOT NULL
    );

    CREATE TABLE Commande(
        Commande_id INT PRIMARY KEY NOT NULL,
        Date_commande DATE NOT NULL CHECK(Date_commande > '1900-01-01'),
        Date_annulation DATE CHECK(Date_annulation > Date_commande),
        Livre_id INT references Livre(Livre_id),
        Membre_id INT references Membre(Membre_id)
    );

    CREATE TABLE Emprunt(
        Emprunt_id INT PRIMARY KEY NOT NULL,
        Date_emprunt DATE NOT NULL CHECK(Date_emprunt > '1900-01-01'),
        Date_retour DATE CHECK(Date_retour > Date_emprunt),
        Livre_id INT references Livre(Livre_id),
        Membre_id INT references Membre(Membre_id)
    );


    CREATE TABLE Auteur(
        Auteur_id INT NOT NULL references Livre(Livre_id),
        Auteur CHAR(50),
        PRIMARY KEY(Auteur_id,Auteur)
    );

    CREATE TABLE Genre(
        Livre_id INT NOT NULL references Livre(Livre_id),
        Genre CHAR(50),
        PRIMARY KEY(Livre_id,Genre)
    );

    
-- insert data into livre table
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(100101,'Sirius Circling','no','no');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(177581,'Wicked Dance','yes','no');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(780210,'Whisper of Rak','no','yes');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(168161,'Primed for Gold','yes','yes');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(805102,'Twilight of Neptune','no','no');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(457400,'2246: Oasis','yes','no');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(456991,'Unseen Blade','no','yes');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(194530,'Shard and the Sickle','yes','yes');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(186027,'Made for Sorrow','no','no');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(409946,'Crime of the Pale Porter','yes','no');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(438955,'The Blade in the North','no','yes');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(293209,'Moons of Arrakis','yes','yes');
INSERT INTO Livre(Livre_id,Titre,Reservation,Emprunte)
VALUES(377828,'The Scarlet Orb','no','no');


-- Insert data into membre table
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(1,'Haggith Chijindum',74824,'Montreal','Otter Cliff');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(2,'Nyyrikki Kaley',70585,'Montreal','Westowe Hill');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(5,'Mary Antelmo',31094,'Montreal','Hillcrest Glas');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(10,'Lope Alkippe',39402,'Montreal','West Hill Laurels');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(12,'Militsa Endel',68840,'Montreal','Carlton Barton');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(49,'Shoshana Calypso',57934,'Montreal','Ashurst Elms');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(21,'Quinten Alastor',68537,'Montreal','Robertson Cloisters');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(41,'Arushi Filadelfo',24972,'Montreal','Ffordd Terfyn');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(27,'Kóri Lionel',52624,'Montreal','Lloyd Barton');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(35,'Lech Sandeep',48183,'Montreal','Chatham Street');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(33,'Jaxton Håkan',90721,'Montreal','Chatham Street');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(42,'Yauheniya Nikhil',89147,'Montreal','Carlton Barton');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(15,'Johanna Kiril',34771,'Montreal','Otter Cliff');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(7,'Lumi Ifiok',63126,'Montreal','Westowe Hill');
INSERT INTO Membre(Membre_id,Nom,Num_civique,Ville,Rue)
VALUES(53,'Joel Cian',24955,'Montreal','Otter Cliff');


-- Insert data into commande table
INSERT INTO Commande(Commande_id,Date_commande,Livre_id,Membre_id)
VALUES(1,'2020-02-04',100101,12);
INSERT INTO Commande(Commande_id,Date_commande,Date_annulation,Livre_id,Membre_id)
VALUES(2,'2020-03-14','2020-03-18',177581,12);
INSERT INTO Commande(Commande_id,Date_commande,Date_annulation,Livre_id,Membre_id)
VALUES(3,'2020-10-11','2020-10-12',780210,49);
INSERT INTO Commande(Commande_id,Date_commande,Date_annulation,Livre_id,Membre_id)
VALUES(4,'2021-08-25','2021-08-27',168161,21);
INSERT INTO Commande(Commande_id,Date_commande,Livre_id,Membre_id)
VALUES(5,'2021-01-31',805102,41);
INSERT INTO Commande(Commande_id,Date_commande,Livre_id,Membre_id)
VALUES(6,'2021-12-12',457400,27);
INSERT INTO Commande(Commande_id,Date_commande,Date_annulation,Livre_id,Membre_id)
VALUES(7,'2021-03-06','2021-03-08',780210,2);
INSERT INTO Commande(Commande_id,Date_commande,Date_annulation,Livre_id,Membre_id)
VALUES(8,'2021-03-12','2021-03-14',100101,2);
INSERT INTO Commande(Commande_id,Date_commande,Livre_id,Membre_id)
VALUES(9,'2021-11-11',100101,12);
INSERT INTO Commande(Commande_id,Date_commande,Date_annulation,Livre_id,Membre_id)
VALUES(10,'2021-05-13','2021-05-17',177581,5);
INSERT INTO Commande(Commande_id,Date_commande,Livre_id,Membre_id)
VALUES(11,'2022-01-02',168161,49);
INSERT INTO Commande(Commande_id,Date_commande,Livre_id,Membre_id)
VALUES(12,'2022-03-22',456991,35);



-- Insert data into emprunt table
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Date_retour,Livre_id,Membre_id)
VALUES(1,'2021-12-08','2021-12-12',194530,33);
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Date_retour,Livre_id,Membre_id)
VALUES(2,'2021-05-19','2021-05-29',186027,33);
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Date_retour,Livre_id,Membre_id)
VALUES(3,'2020-06-29','2020-07-11',805102,15);
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Livre_id,Membre_id)
VALUES(4,'2021-04-13',457400,5);
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Date_retour,Livre_id,Membre_id)
VALUES(5,'2021-02-20','2021-03-03',194530,53);
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Date_retour,Livre_id,Membre_id)
VALUES(6,'2021-03-09','2021-03-23',780210,21);
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Date_retour,Livre_id,Membre_id)
VALUES(7,'2021-02-28','2021-03-10',194530,21);
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Date_retour,Livre_id,Membre_id)
VALUES(8,'2022-04-12','2022-04-20',456991,49);
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Date_retour,Livre_id,Membre_id)
VALUES(9,'2021-12-08','2021-12-19',409946,42);
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Date_retour,Livre_id,Membre_id)
VALUES(10,'2021-12-08','2021-12-21',177581,12);
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Date_retour,Livre_id,Membre_id)
VALUES(11,'2020-02-14','2020-02-27',100101,1);
INSERT INTO Emprunt(Emprunt_id,Date_emprunt,Date_retour,Livre_id,Membre_id)
VALUES(12,'2020-02-14','2021-02-20',100101,10);



-- insert data into author table
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(100101,'Akulina Ríona');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(177581,'Marina Kristi');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(780210,'Rodolphe Jennica');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(168161,'Carl Brigitta');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(805102,'Stefans Rafayel');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(457400,'Wasi Troilus');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(456991,'Aristocles Elixabete');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(194530,'Miklós Jude');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(186027,'Braňka Beulah');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(409946,'Gunni Farhad');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(438955,'Ivana Camellia');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(293209,'Hákun Zrinka');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(377828,'Agni Noy');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(186027,'Alice Hadya');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(186027,'Betony Mehmood');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(168161,'Shobha Desta');
INSERT INTO Auteur(Auteur_id,Auteur) VALUES(177581,'Lottie Aroldo');

-- insert data into genre table
INSERT INTO Genre(Livre_id,Genre) VALUES(100101,'Romance');
INSERT INTO Genre(Livre_id,Genre) VALUES(177581,'Fantasy');
INSERT INTO Genre(Livre_id,Genre) VALUES(780210,'Fantasy');
INSERT INTO Genre(Livre_id,Genre) VALUES(168161,'Mystery');
INSERT INTO Genre(Livre_id,Genre) VALUES(805102,'Romance');
INSERT INTO Genre(Livre_id,Genre) VALUES(457400,'Sci-fi');
INSERT INTO Genre(Livre_id,Genre) VALUES(456991,'Crime');
INSERT INTO Genre(Livre_id,Genre) VALUES(194530,'Mystery');
INSERT INTO Genre(Livre_id,Genre) VALUES(186027,'Fantasy');
INSERT INTO Genre(Livre_id,Genre) VALUES(409946,'Crime');
INSERT INTO Genre(Livre_id,Genre) VALUES(438955,'Fantasy');
INSERT INTO Genre(Livre_id,Genre) VALUES(293209,'Romance');
INSERT INTO Genre(Livre_id,Genre) VALUES(377828,'Sci-fi');
INSERT INTO Genre(Livre_id,Genre) VALUES(186027,'Mystery');
INSERT INTO Genre(Livre_id,Genre) VALUES(100101,'Fantasy');
INSERT INTO Genre(Livre_id,Genre) VALUES(168161,'Crime');
INSERT INTO Genre(Livre_id,Genre) VALUES(438955,'Crime');

SELECT Genre.genre, count(*) AS nbr_livre 
FROM Genre
JOIN Emprunt ON Genre.Livre_id = Emprunt.Livre_id
GROUP BY genre;

SELECT Commande_id, Nom 
FROM Commande
INNER JOIN Membre ON Commande.Membre_id = Membre.Membre_id;

SELECT Titre
FROM Genre
INNER JOIN Livre ON Genre.Livre_id = Livre.Livre_id
WHERE (Genre='Crime');

SELECT Date_emprunt, count(*) AS nbr_emprunt 
FROM Emprunt
GROUP BY Date_emprunt; 
