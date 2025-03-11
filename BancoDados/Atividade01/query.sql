SELECT 
    s.id AS pedido_id, 
    COUNT(ps.pId) AS num_produtos, 
    SUM(ps.quantity) AS quantidade_total
FROM 
    scheduling s
JOIN 
    productsche ps ON s.id = ps.eId
JOIN 
    product p ON ps.pId = p.id
WHERE 
    s.status IN ('open', 'reserved', 'payment')
GROUP BY 
    s.id;

    DELIMITER //

CREATE PROCEDURE LimitarPedidosEmAtendimento()
BEGIN
    SELECT 
        s.id AS pedido_id, 
        s.tId AS mesa_id, 
        s.cId AS cliente_id, 
        s.date AS data_pedido, 
        s.status AS status_pedido
    FROM 
        scheduling s
    WHERE 
        s.status IN ('open', 'reserved', 'payment');
END //

DELIMITER ;

CALL LimitarPedidosEmAtendimento();