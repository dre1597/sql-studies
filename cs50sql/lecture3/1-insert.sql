INSERT INTO "cards" ("id") VALUES (1);

INSERT INTO "stations" ("name", "line") VALUES ('Main', 'line 1');
INSERT INTO "stations" ("name", "line") VALUES ('name A', 'line 2');
INSERT INTO "stations" ("name", "line") VALUES ('name B', 'line 3');
INSERT INTO "stations" ("name", "line") VALUES ('name C', 'line 4');
INSERT INTO "stations" ("name", "line") VALUES ('name D', 'line 5');
INSERT INTO "stations" ("name", "line") VALUES ('name E', 'line 6');
INSERT INTO "stations" ("name", "line") VALUES ('name F', 'line 7');
INSERT INTO "stations" ("name", "line") VALUES ('name G', 'line 8');

INSERT INTO "swipes" ("card_id", "station_id", "action", "amount") VALUES (1, 1, 'enter', 100);
INSERT INTO "swipes" ("card_id", "station_id", "action", "amount") VALUES (1, 2, 'exit', 100);
INSERT INTO "swipes" ("card_id", "station_id", "action", "amount") VALUES (1, 3, 'deposit', 100);
INSERT INTO "swipes" ("card_id", "station_id", "action", "amount") VALUES (1, 3, 'deposit', -100);
INSERT INTO "swipes" ("card_id", "station_id", "action", "amount") VALUES (1, 3, 'deposit', 0);


