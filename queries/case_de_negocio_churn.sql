-- Identificação de clientes com risco de churn
WITH activity AS (
    SELECT
        customer_id,
        MAX(login_date)   AS last_login,
        MAX(payment_date) AS last_payment
    FROM events
    GROUP BY 1
)
SELECT
    customer_id,
    last_login,
    last_payment,
    CASE
        WHEN last_login   < CURRENT_DATE - INTERVAL '30 days'
          OR last_payment < CURRENT_DATE - INTERVAL '30 days'
        THEN 'Risco Alto'
        ELSE 'OK'
    END AS churn_risk
FROM activity;
