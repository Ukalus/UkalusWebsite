\connect ukalus-db
CREATE SCHEMA ukalus_public;

CREATE TYPE ukalus_public.content_type AS ENUM (
    'TEXT',
    'GRAPHIC',
    'TEXT_GRAPHIC'
);

CREATE TABLE ukalus_public.Articles (
    content_id SERIAL PRIMARY KEY,
    content_type ukalus_public.content_type, 
    title varchar(255),
    description varchar(255),
    text_id varchar(255),
    code_id varchar(255)
);




