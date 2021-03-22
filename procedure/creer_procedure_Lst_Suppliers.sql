--Créez la procédure stockée Lst_Suppliers correspondant à la requête afficher le nom des fournisseurs pour lesquels une commande a été passée.

DELIMITER
    $$
CREATE PROCEDURE Lst_Suppliers()
BEGIN
    SELECT
        sup_name
    FROM
        suppliers
    JOIN products ON pro_sup_id = sup_id
    JOIN orders_details ON ode_pro_id = pro_id
    WHERE
        ode_quantity IS NOT NULL
    GROUP BY
        sup_name ;
END $$
DELIMITER
    ;

   --SHOW CREATE PROCEDURE Lst_Suppliers

   CALL `Lst_Suppliers`();