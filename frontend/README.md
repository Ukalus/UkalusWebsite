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

There will be **2 Tables** inside of the database for storing articles 

**First Table:** Articles
    
    articleId: int
    title: string
    description: string
    content: foreign_key 

**Second Table:** Content

    contentId: int
    text: markdown
    canvas: 