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