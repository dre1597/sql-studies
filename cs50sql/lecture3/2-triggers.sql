CREATE TABLE "collections" (
    "id" INTEGER,
    "title" TEXT NOT NULL,
    "accession_number" TEXT NOT NULL UNIQUE,
    "acquired" NUMERIC,
    PRIMARY KEY("id")
);

INSERT INTO "collections" ("title", "accession_number", "acquired")
VALUES
    ('Farmers working at dawn', '11.6152', '1911-08-03'),
    ('Imaginative landscape', '56.496', NULL),
    ('Profusion of flowers', '56.257', '1956-04-12'),
    ('Spring outing', '14.76', '1914-01-08');

CREATE TABLE "transactions" (
    "id" INTEGER,
    "title" TEXT,
    "action" TEXT,
    PRIMARY KEY("id")
);

CREATE TRIGGER "sell"
BEFORE DELETE ON "collections"
BEGIN
    INSERT INTO "transactions" ("title", "action")
    VALUES (OLD."title", 'sold');
END;

DELETE FROM "collections" WHERE "title" = 'Profusion of flowers';

CREATE TRIGGER "buy"
AFTER INSERT ON "collections"
BEGIN
    INSERT INTO "transactions" ("title", "action")
    VALUES (NEW."title", 'bought');
END;

INSERT INTO "collections" ("title", "accession_number", "acquired")
VALUES ('Profusion of flowers', '56.257', '1956-04-12');
