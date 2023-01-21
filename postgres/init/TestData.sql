

-- A Graphic based  test article
INSERT INTO ukalus_public.Articles(content_type, title, description, code_id)
VALUES(
    'GRAPHIC',
    'Flow Field',
    'A Flowfield Simulation',
    '12798'
    );



-- A Text based test article
INSERT INTO ukalus_public.Articles(content_type, title, description, text_id)
VALUES(
    'TEXT',
    'Electric 101',
    'The basics of electric devices',
    '12713'
    );

-- A Text and graphic based test article
INSERT INTO ukalus_public.Articles(content_type, title, description, text_id, code_id)
VALUES(
    'TEXT_GRAPHIC',
    'FTT Transform',
    'The FTT Transform Visualized',
    '12309',
    '12343'
    );