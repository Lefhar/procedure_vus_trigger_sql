--Créer la procédure stockée Lst_Rush_Orders, qui liste les commandes ayant le libelle "commande urgente".

DELIMITER
    $$
CREATE PROCEDURE Lst_Rush_Orders()
BEGIN
    SELECT
        *
    FROM
        orders
    WHERE
        ord_status LIKE "Commande Urgente" ;
END $$
DELIMITER
    ;