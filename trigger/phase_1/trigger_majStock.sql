--Le déclencheur majStock met à jour le stock de produit (colonne stock de la table produit) lorsqu'une commande est ajoutée (insertion dans la table lignedecommande) :

--+++ TODO : renommer les champs des tables ou brancher sur Gescom

DELIMITER $$

CREATE TRIGGER majStock AFTER INSERT ON
    orders_details FOR EACH ROW
BEGIN
    DECLARE id_products INT;
  SET id_products = NEW.ode_pro_id;
    UPDATE
        products
    SET
        pro_stock = pro_stock -1
    WHERE
        pro_id = id_products;
END$$
 
DELIMITER ;