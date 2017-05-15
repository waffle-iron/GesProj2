#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
#Date: 08.05.17
#Auteur: Nevin Constantin
#Description: Script SQL qui permet la création de la base de données pour le P_GesProj2
#Lieu: ETML

DROP DATABASE IF EXISTS db_formation;
CREATE DATABASE db_formation DEFAULT CHARACTER SET latin1 COLLATE latin1_general_cs;
USE db_formation;

#------------------------------------------------------------
# Table: t_formations
#------------------------------------------------------------
#Table qui va gérer les formations ainsi que les informations dessus.

CREATE TABLE t_formations(
        idFormation      int (11) Auto_increment  NOT NULL ,
        forTitre         Varchar (50) ,
        forDescription   Varchar (255) ,
        forDate          Datetime ,
        forDuree         Int ,
        forPrix          Int ,
        forTypeFormation Varchar (50) ,
        forAdresse       Varchar (50) ,
        PRIMARY KEY (idFormation )
)ENGINE=InnoDB;



#------------------------------------------------------------
# Table: t_Formateur
#------------------------------------------------------------
#Table qui va gérer les formateurs et leurs données de contact

CREATE TABLE t_Formateur(
        idFormateur        int (11) Auto_increment  NOT NULL ,
        formateurNom       Varchar (50) ,
        formateurPrenom    Varchar (50) ,
        formateurAdresse   Varchar (255) ,
        formateurEmail     Varchar (255) ,
        formateurTelephone Varchar (15) ,
        formateurTitres    Varchar (255) ,
        PRIMARY KEY (idFormateur )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: t_etudiant
#------------------------------------------------------------
#Table qui va gérer les élèves et leurs données de contact

CREATE TABLE t_etudiant(
        idEtudiant   int (11) Auto_increment  NOT NULL ,
        etuNom       Varchar (50) ,
        etuPrenom    Varchar (50) ,
        etuAdresse   Varchar (255) ,
        etuEmail     Varchar (70) ,
        etuTelephone Varchar (12) ,
        PRIMARY KEY (idEtudiant )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: t_inscriptions
#------------------------------------------------------------
#Table qui va gérer les inscriptions au différents cours

CREATE TABLE t_inscriptions(
        idInscriptions  int (11) Auto_increment  NOT NULL ,
        insParticipants Varchar (255) ,
        insFormations   Varchar (255) ,
        insDates        Varchar (255) ,
        idEtudiant      Int ,
        idFormation     Int ,
        PRIMARY KEY (idInscriptions )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: instruit
#------------------------------------------------------------

CREATE TABLE instruit(
        idFormateur Int NOT NULL ,
        idFormation Int NOT NULL ,
        PRIMARY KEY (idFormateur ,idFormation )
)ENGINE=InnoDB;

ALTER TABLE t_inscriptions ADD CONSTRAINT FK_t_inscriptions_idEtudiant FOREIGN KEY (idEtudiant) REFERENCES t_etudiant(idEtudiant);
ALTER TABLE t_inscriptions ADD CONSTRAINT FK_t_inscriptions_idFormation FOREIGN KEY (idFormation) REFERENCES t_formations(idFormation);
ALTER TABLE instruit ADD CONSTRAINT FK_instruit_idFormateur FOREIGN KEY (idFormateur) REFERENCES t_Formateur(idFormateur);
ALTER TABLE instruit ADD CONSTRAINT FK_instruit_idFormation FOREIGN KEY (idFormation) REFERENCES t_formations(idFormation);
