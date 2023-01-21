# Documentation

This is the documentation to my Website

# Articles

### Every article has 3 components

    - Title 
    - Description
    - Content

### There are 3 different types of content,

    - Text based
    - Graphics based
    - Graphics + text based

<br>

### Text based articles

Strictly text based articles are written and displayed as a markdown file

<hr>

### Graphics based articles

Strictly graphic based articles are displayed inside of a Three.js Canvas

<hr>

### Text and graphic based articles

this type of article is a combination of the other two,
with a three.js canvas and a text that is explaining what is happening 


# Database implementation

There will be a article table inside of the database for storing articles and a content type enum for the 3 cases

**First Table:** Articles
    
    CREATE TABLE ukalus_public.Articles (
        content_id SERIAL PRIMARY KEY,
        content_type ukalus_public.content_type, 
        title varchar(255),
        description varchar(255),
        text_id varchar(255),
        code_id varchar(255)
    );

**Content type enum**

    CREATE TYPE ukalus_public.content_type AS ENUM (
        'TEXT',
        'GRAPHIC',
        'TEXT_GRAPHIC'
    );

