USE Proyecto_01_Riesgo_Crediticio;
GO

-- 1. Cantidad total de clientes
SELECT
    COUNT(*) AS total_clientes
FROM [credit card clients];


-- 2. Distribucion de clientes segun default
SELECT
    [default.payment.next.month] AS default_cliente,
    COUNT(*) AS cantidad_clientes,
    CAST(
        AVG(CAST([default.payment.next.month] AS FLOAT)) * 100
        AS DECIMAL(10,2)
    ) AS tasa_default
FROM [credit card clients]
GROUP BY [default.payment.next.month];


-- 3. Tasa de default segun estado de pago
SELECT
    PAY_0 AS estado_pago,
    COUNT(*) AS total_clientes,
    SUM(
        CASE
            WHEN [default.payment.next.month] = 1 THEN 1
            ELSE 0
        END
    ) AS clientes_default,
    CAST(
        AVG(CAST([default.payment.next.month] AS FLOAT)) * 100
        AS DECIMAL(10,2)
    ) AS tasa_default
FROM [credit card clients]
GROUP BY PAY_0
ORDER BY PAY_0;


-- 4. Limite de credito promedio segun default
SELECT
    [default.payment.next.month] AS default_cliente,
    COUNT(*) AS cantidad_clientes,
    AVG(CAST(LIMIT_BAL AS FLOAT)) AS limite_promedio
FROM [credit card clients]
GROUP BY [default.payment.next.month];


-- 5. Tasa de default segun sexo
SELECT
    SEX AS sexo,
    COUNT(*) AS total_clientes,
    CAST(
        AVG(CAST([default.payment.next.month] AS FLOAT)) * 100
        AS DECIMAL(10,2)
    ) AS tasa_default
FROM [credit card clients]
GROUP BY SEX
ORDER BY SEX;
