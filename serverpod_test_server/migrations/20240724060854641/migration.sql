BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "example" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "data" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "tb_note" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "content" text NOT NULL,
    "created" timestamp without time zone NOT NULL,
    "updated" timestamp without time zone NOT NULL
);


--
-- MIGRATION VERSION FOR serverpod_test
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_test', '20240724060854641', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240724060854641', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
