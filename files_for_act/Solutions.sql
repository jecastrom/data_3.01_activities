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