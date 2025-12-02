-- Exemplo de função de janela: acumulado por cliente
SELECT
    customer_id,
    purchase_date,
    amount,
    SUM(amount) OVER (PARTITION BY customer_id ORDER BY purchase_date) AS running_total
FROM purchases;
