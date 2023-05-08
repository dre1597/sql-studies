SELECT "title", "author", "format" FROM "longlist"
WHERE "format" != 'hardcover';

SELECT "title", "author", "format" FROM "longlist"
WHERE "format" <> 'hardcover';

SELECT "title", "author", "format" FROM "longlist"
WHERE NOT "format" = 'hardcover';
