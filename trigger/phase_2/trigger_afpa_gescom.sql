--Créer une table commander_articles constituées de colonnes :

--codart : id du produit
--qte : quantité à commander
--date : date du jour
CREATE TABLE `commander_articles`(
    cda_id INT(10) NOT NULL AUTO_INCREMENT,
    codart INT(10) UNSIGNED NOT NULL,
    qte INT(10) NOT NULL,
    cda_date DATETIME NOT NULL,
    PRIMARY KEY(cda_id),
    FOREIGN KEY(`codart`) REFERENCES products(`pro_id`)
) ENGINE = INNODB