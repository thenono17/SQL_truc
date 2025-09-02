USE sql_truc;

-- Revenu tot
SELECT
    SUM(CAST(c.price AS DECIMAL(10, 2))) AS revenu_total
FROM
    enrollments e
    JOIN courses c ON e.course_id = c.id;

-- Revenu tot/cours
SELECT
    c.id,
    c.title,
    SUM(CAST(c.price AS DECIMAL(10, 2))) AS revenu_par_cours
FROM
    enrollments e
    JOIN courses c ON e.course_id = c.id
GROUP BY
    c.id,
    c.title
ORDER BY
    revenu_par_cours DESC;

-- Revenu tot/catégorie
SELECT
    c.category,
    SUM(CAST(c.price AS DECIMAL(10, 2))) AS revenu_par_categorie
FROM
    enrollments e
    JOIN courses c ON e.course_id = c.id
GROUP BY
    c.category
ORDER BY
    revenu_par_categorie DESC;

-- Revenu moyen/user
SELECT
    AVG(user_revenue) AS revenu_moyen_par_utilisateur
FROM
    (
        SELECT
            u.id,
            SUM(CAST(c.price AS DECIMAL(10, 2))) AS user_revenue
        FROM
            users u
            LEFT JOIN enrollments e ON u.id = e.user_id
            LEFT JOIN courses c ON e.course_id = c.id
        GROUP BY
            u.id
    ) AS revenues;