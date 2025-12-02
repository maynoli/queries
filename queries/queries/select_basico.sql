SELECT id, name, created_at
FROM customers
WHERE active = TRUE
ORDER BY created_at DESC;
