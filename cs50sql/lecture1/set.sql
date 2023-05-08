SELECT 'author' AS "profession", "name" FROM "authors"
UNION
SELECT 'translator' AS "profession", "name" FROM "translators";

SELECT "name" FROM "authors"
INTERSECT
SELECT "name" FROM "translators";

SELECT "name" FROM "translators"
EXCEPT
SELECT "name" FROM "authors";
