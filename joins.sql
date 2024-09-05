-- inner join
SELECT r.id_reserva, u.nome AS nome_usuario, p.nome_prato, r.data_reserva, r.quantidade, r.status
FROM reserva r
INNER JOIN usuario u ON r.id_usuario = u.id_usuario
INNER JOIN prato p ON r.id_prato = p.id_prato
where p.nome_prato = "Gyro";

-- left join
SELECT p.id_prato, p.nome_prato, e.quantidade
FROM prato p
LEFT JOIN estoque e ON p.id_prato = e.id_prato
where e.quantidade between 30 and 70;

-- right join
SELECT f.id_funcionario, f.nome AS nome_funcionario, fi.nome_filial, fi.endereco
FROM funcionario f
RIGHT JOIN filial fi ON f.id_filial = fi.id_filial
where fi.endereco = 'Avenida Norte, 456';

-- cross join
SELECT u.nome AS nome_usuario, p.nome_prato
FROM usuario u
CROSS JOIN prato p;

-- full join


