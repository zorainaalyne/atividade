INSERT INTO tabela (localização, hourValue) VALUES
(1, 4.00),
(2, 3.50),
(3, 5.00),
(4, 4.50),
(5, 3.80);

-- Inserir dados na tabela 'cliente'
INSERT INTO cliente (nome, email) VALUES
('Laurindo', 'laurindo@email.com'),
('Claudia', 'claudia@email.com'),
('Laura', 'laura@email.com'),
('Carlos', 'carlos@email.com'),
('Ana', 'ana@email.com');

-- Inserir dados na tabela 'produto'
INSERT INTO produto (nome, price) VALUES
('Ovo Frito', 4.00),
('Hamburguer', 10.00),
('Picanha', 200.00),
('Café', 45.00),
('Batata Frita', 15.00);

-- Inserir dados na tabela 'scheduling' (agendamentos)
INSERT INTO scheduling (tId, cId, date, status) VALUES
(1, 2, '2025-03-29', 'open'),
(2, 3, '2025-03-01', 'reserved'),
(3, 1, '2025-03-15', 'payment'),
(4, 5, '2025-03-20', 'closed'),
(5, 4, '2025-03-25', 'canceled');

-- Inserir dados na tabela 'productsche' (relacionamento entre pedidos e produtos)
INSERT INTO productsche (eId, pId, quantity) VALUES
(1, 1, 2),  -- Pedido 1, Produto 1 (Ovo Frito) - 2 unidades
(1, 2, 1),  -- Pedido 1, Produto 2 (Hamburguer) - 1 unidade
(2, 3, 1),  -- Pedido 2, Produto 3 (Picanha) - 1 unidade
(3, 4, 3),  -- Pedido 3, Produto 4 (Café) - 3 unidades
(5, 5, 4);  -- Pedido 5, Produto 5 (Batata Frita) - 4 unidades