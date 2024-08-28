CREATE TABLE "vencedores" (
  "participantes_id" integer,
  "evento_id" integer,
  "created_at" timestamp
);

CREATE TABLE "participantes" (
  "id" integer PRIMARY KEY,
  "username" varchar,
  "role" varchar,
  "created_at" timestamp
);

CREATE TABLE "evento" (
  "id" integer PRIMARY KEY,
  "name" varchar,
  "description" text,
  "n_participantes" integer,
  "created_at" timestamp
);

CREATE TABLE "premiados" (
  "participantes_id" integer,
  "product_id" integer,
  "created_at" timestamp
);

CREATE TABLE "brindes" (
  "id" integer PRIMARY KEY,
  "product" varchar,
  "description" text,
  "qtd" integer,
  "created_at" timestamp
);

COMMENT ON COLUMN "evento"."description" IS 'Content of the post';

COMMENT ON COLUMN "brindes"."description" IS 'Content of the post';

ALTER TABLE "vencedores" ADD FOREIGN KEY ("participantes_id") REFERENCES "participantes" ("id");

ALTER TABLE "vencedores" ADD FOREIGN KEY ("evento_id") REFERENCES "evento" ("id");

ALTER TABLE "premiados" ADD FOREIGN KEY ("participantes_id") REFERENCES "participantes" ("id");

ALTER TABLE "premiados" ADD FOREIGN KEY ("product_id") REFERENCES "brindes" ("id");
