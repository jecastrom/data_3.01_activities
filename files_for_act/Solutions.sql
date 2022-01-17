-- Activity 3.01
-- Activity 1
-- Get the number of clients by district, returning district name.
SELECT
    a.district_id AS district_id,
    b.A2 AS district_name,
    count(a.client_id) AS number_of_clients
FROM
    `client` a
    INNER JOIN district b ON a.district_id = b.A1
GROUP BY
    1
ORDER BY
    3 DESC
LIMIT
    10;
-- Are there districts with no clients?
SELECT
    a.district_id AS district_id,
    b.A2 AS district_name,
    count(a.client_id) AS number_of_clients
FROM
    `client` a
    INNER JOIN district b ON a.district_id = b.A1
GROUP BY
    1
HAVING
    number_of_clients <= 1
ORDER BY
    3 DESC;
--
INSERT INTO
    district
VALUES
    (
        100,
        'New Strakonice',
        'south Bohemia',
        35323,
        47,
        7,
        1,
        1,
        2,
        29.2,
        8541,
        1.32,
        1.82,
        60,
        781,
        771
    );
--
UPDATE
    `client`
SET
    district_id = 100
WHERE
    district_id = 20;
--
SELECT
    *
FROM
    district
WHERE
    a1 = 100;
--
SELECT
    *
FROM
    bank.client
WHERE
    district_id IS NULL;
--
SELECT
    *
FROM
    client
WHERE
    district_id NOT IN (
        SELECT
            a1
        FROM
            district
    );
--
SELECT
    *
FROM
    client
WHERE
    district_id IS NULL
    OR district_id NOT IN (
        SELECT
            a1
        FROM
            district
    );
--
SELECT
    a.client_id,
    b.A3 AS region,
    b.A2 AS district
FROM
    `client` a
    INNER JOIN district b ON a.district_id = b.A1
ORDER BY
    2,
    3
LIMIT
    10;
--
SELECT
    count(a.client_id) AS number_of_clients,
    b.A3 AS region
FROM
    `client` a
    INNER JOIN district b ON a.district_id = b.A1
GROUP BY
    2
ORDER BY
    1 DESC;