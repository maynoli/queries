-- Consulta básica: clientes ativos ordenados pela data de criação
SELECT id, name, created_at
FROM customers
WHERE active = TRUE
ORDER BY created_at DESC;
