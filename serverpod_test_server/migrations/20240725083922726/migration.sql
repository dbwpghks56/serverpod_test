BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "tb_note" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "tb_note" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "content" text NOT NULL,
    "created" timestamp without time zone NOT NULL,
    "updated" timestamp without time zone NOT NULL,
    "userId" bigint NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "tb_note"
    ADD CONSTRAINT "tb_note_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "tb_user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR serverpod_test
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_test', '20240725083922726', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240725083922726', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
