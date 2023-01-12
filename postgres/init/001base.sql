\connect ukalus-db
CREATE TABLE Articles (
    title varchar(255),
    description varchar(255),
    code_ref varchar(255),
    image varchar(255),
    models varchar(255)
);

INSERT INTO Articles(title,description, code_ref,image,models)
VALUES ("This","IS","A","TEST","LOL");