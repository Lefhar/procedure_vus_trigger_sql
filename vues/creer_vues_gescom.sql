--v_Details correspondant à la requête : _A partir de la table orders_details, afficher par code produit, la somme des quantités commandées et le prix total correspondant : on nommera la colonne correspondant à la somme des quantités commandées, QteTot et le prix total, PrixTot.
CREATE VIEW v_Details AS SELECT
    pro_ref,
    SUM(ode_quantity) AS QtrTot,
    ROUND(
        SUM(
            ode_quantity *(
                ode_unit_price *(1 - ode_discount * 0.01)
            )
        ),
        2
    ) AS PrixTot
FROM
    orders_details
JOIN products ON pro_id = ode_pro_id
GROUP BY
    pro_ref




--v_Ventes_Zoom correspondant à la requête : Afficher les ventes dont le code produit est ZOOM (affichage de toutes les colonnes de la table orders_details).
CREATE VIEW v_Ventes_Zoom AS SELECT
    pro_ref,
    orders_details.*
FROM
    orders_details
JOIN products ON pro_id = ode_pro_id
WHERE
    `pro_ref` LIKE 'ZOOM'