INSERT INTO usr
VALUES (nextval('usr_id_seq'), 'admin', 'password', 'Администратор', 'default@email.com', '79876543211', true,
        'Администратор');

INSERT INTO user_role
VALUES ((SELECT id FROM usr WHERE login = 'admin'), 3);