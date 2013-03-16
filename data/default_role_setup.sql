INSERT INTO `role`
    (`id`, `parent_id`, `roleId`)
VALUES
    (1, NULL, 'guest'),
    (2, 1, 'user'),
    (3, 2, 'moderator'),
    (4, 3, 'administrator');