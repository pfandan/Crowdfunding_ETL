-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/CpsX87
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

Drop table "campaign";
Drop table "category";
Drop table "subcategory";
drop table "contact";


CREATE TABLE "category" (
    "category_id" varchar(10)   NOT NULL,
    "category" varchar(20)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);


CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategory" varchar(20)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);


CREATE TABLE "contact" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(20)   NOT NULL,
    "last_name" varchar(20)   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" serial   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(50)   NOT NULL,
    "description" varchar(50)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(15)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(15)   NOT NULL,
    "currency" varchar(15)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contact" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");


SELECT table_schema, table_name, column_name, data_type 
FROM INFORMATION_SCHEMA.COLUMNS where table_name in ('category','subcategory', 'contact','campaign') order by table_name;

