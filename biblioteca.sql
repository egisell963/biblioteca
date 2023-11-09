-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2023 a las 17:57:19
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add libro', 7, 'add_libro'),
(26, 'Can change libro', 7, 'change_libro'),
(27, 'Can delete libro', 7, 'delete_libro'),
(28, 'Can view libro', 7, 'view_libro'),
(29, 'Can add rol', 8, 'add_rol'),
(30, 'Can change rol', 8, 'change_rol'),
(31, 'Can delete rol', 8, 'delete_rol'),
(32, 'Can view rol', 8, 'view_rol'),
(33, 'Can add libro_usuario', 9, 'add_libro_usuario'),
(34, 'Can change libro_usuario', 9, 'change_libro_usuario'),
(35, 'Can delete libro_usuario', 9, 'delete_libro_usuario'),
(36, 'Can view libro_usuario', 9, 'view_libro_usuario'),
(37, 'Can add usuario', 10, 'add_usuario'),
(38, 'Can change usuario', 10, 'change_usuario'),
(39, 'Can delete usuario', 10, 'delete_usuario'),
(40, 'Can view usuario', 10, 'view_usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$ezSnMBO0EZxvxIzqLPgjA8$dMcYLvtnBkpbIvOmWQ4o0+KFGGTJCgg371rzXboYT4k=', '2023-11-08 16:29:48.169619', 1, 'gisell', '', '', 'egisell@gmail.com', 1, 1, '2023-10-26 14:09:20.327457'),
(2, 'pbkdf2_sha256$600000$uVrn1LI7jd1TGlC25PoJgb$SmeNdISh/SK7Q93Bx343+/xvMzGslMMd5zqm1F0Hqsk=', '2023-11-08 15:32:01.520689', 0, 'Brenda123', '', '', 'brendaca@gmail.com', 0, 1, '2023-11-03 16:30:00.084547'),
(3, 'pbkdf2_sha256$600000$vK7bxrsIlMhsdMk3rMNikw$vZm4hwtXP17DXOYA25/29DQJMUDMWDcYBf66TVsK1wE=', '2023-11-05 19:47:09.026518', 0, 'Esteban123', '', '', 'esteban1@gmail.com', 0, 1, '2023-11-05 19:47:05.703528');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-26 14:20:54.851901', '1', 'Libro object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-10-26 14:31:42.268167', '2', 'Titulo: Fundamentos de programación', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-10-26 14:33:21.422074', '3', 'Titulo: Programación para principiantes', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-10-26 14:41:15.461891', '1', 'Titulo: La ilíada', 2, '[]', 7, 1),
(5, '2023-10-26 14:43:02.152294', '4', 'Titulo: La ilíada', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-10-26 14:43:26.095400', '4', 'Titulo: La ilíada', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'libreria', 'libro'),
(9, 'libreria', 'libro_usuario'),
(8, 'libreria', 'rol'),
(10, 'libreria', 'usuario'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-26 04:17:06.800456'),
(2, 'auth', '0001_initial', '2023-10-26 04:17:08.245864'),
(3, 'admin', '0001_initial', '2023-10-26 04:17:08.654879'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-26 04:17:08.680882'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-26 04:17:08.708872'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-26 04:17:08.945889'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-26 04:17:09.131888'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-26 04:17:09.190867'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-26 04:17:09.230877'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-26 04:17:09.437869'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-26 04:17:09.447876'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-26 04:17:09.474872'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-26 04:17:09.547886'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-26 04:17:09.623869'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-26 04:17:09.701881'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-26 04:17:09.734874'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-26 04:17:09.812871'),
(18, 'libreria', '0001_initial', '2023-10-26 04:17:09.873874'),
(19, 'sessions', '0001_initial', '2023-10-26 04:17:10.022883'),
(20, 'libreria', '0002_rol_usuario_libro_usuario', '2023-10-26 21:49:50.339272'),
(21, 'libreria', '0003_libro_estado_alter_libro_usuario_id_usuario_and_more', '2023-11-08 19:17:51.106689'),
(22, 'libreria', '0004_alter_libro_estado', '2023-11-08 19:32:14.669124');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2k1sdvn47wv277sj8tolibbiuhjk4ddn', '.eJxVjDsOwjAQBe_iGlle_0NJzxms9a7BAeRIcVIh7k4ipYD2zcx7i4TrUtPay5xGFmcB4vS7ZaRnaTvgB7b7JGlqyzxmuSvyoF1eJy6vy-H-HVTsdaujAVLkjAeKFjMQaR108caZGBxgsI6Zg9VA5TY4D0apgX2hDTMaLz5fwJE3Cw:1qw16d:fZRHPcencWSQMbxrT8z4Pg5rDV9gTUvLnh9ClT2W_Gg', '2023-11-09 14:13:03.965129'),
('4a29k181uvyur7dnrng1y7x6c2ou8g5f', '.eJxVjEEOwiAQRe_C2hAKdACX7nsGMjBTqRqalHZlvLtt0oVu33v_v0XEbS1xa7zEicRVGHH5ZQnzk-sh6IH1Pss813WZkjwSedomh5n4dTvbv4OCrexrNo4gsEcIisfROdN7djbYTvvEXkFvFARLBJA7YKUUaa-tsTvVSaP4fAHHnDaZ:1qzj5R:b-Sx6Z6tVIw3SVCAT8vIgidsu9IaUIuj0fvihDaGINs', '2023-11-19 19:47:09.045519'),
('6lb4cp0mlj3hu7z14y2eujx2fp2mgi3a', '.eJxVjDsOwjAQBe_iGlle_0NJzxms9a7BAeRIcVIh7k4ipYD2zcx7i4TrUtPay5xGFmcB4vS7ZaRnaTvgB7b7JGlqyzxmuSvyoF1eJy6vy-H-HVTsdaujAVLkjAeKFjMQaR108caZGBxgsI6Zg9VA5TY4D0apgX2hDTMaLz5fwJE3Cw:1r0lR6:Bz3jjVQnjYKDV6CLeNeEdDcH1S_8umKhzOSvz0xsHko', '2023-11-22 16:29:48.181618'),
('bskp1ipby73wswk5fi7jin632v1vfmvu', '.eJxVjDsOwjAQBe_iGln-setQ0ucM1tre4ACypTipEHeHSCmgfTPzXiLQtpawdV7CnMVFGHH63SKlB9cd5DvVW5Op1XWZo9wVedAux5b5eT3cv4NCvXxrNzAiMmTHGbR3EXTyqByAOUd2MaMBS37wk3WEysDkWVk0WtukmVi8P8gDNyM:1qziwJ:mXpDtrcw98OSkLvhWeZ92wcz549son4K1VOQME87-_s', '2023-11-19 19:37:43.187716'),
('n8ke312kea85ifpvv868tudksk4lwu39', '.eJxVjDsOwjAQBe_iGlle_0NJzxms9a7BAeRIcVIh7k4ipYD2zcx7i4TrUtPay5xGFmcB4vS7ZaRnaTvgB7b7JGlqyzxmuSvyoF1eJy6vy-H-HVTsdaujAVLkjAeKFjMQaR108caZGBxgsI6Zg9VA5TY4D0apgX2hDTMaLz5fwJE3Cw:1qzivN:DthMAPDqD2SUOSKDNx51BEGwzzC0Q8rE5bZHv97WcTA', '2023-11-19 19:36:45.829765');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_libro`
--

CREATE TABLE `libreria_libro` (
  `id_libro` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `fecha` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libreria_libro`
--

INSERT INTO `libreria_libro` (`id_libro`, `titulo`, `autor`, `descripcion`, `fecha`, `cantidad`, `estado`) VALUES
(2, 'Fundamentos de programación', 'José Antonio Cerrada Somolinos, ‎Manuel E. Collado Machuca', 'El texto esta diseñado para poder seguir una asignatura de Fundamentos de Programación de primer curso de Grado en Informática, pero es un texto introductorio que puede seguir cualquier lector que tenga conocimientos generales de ...', 2010, 9, 'activo'),
(3, 'Programación para principiantes', 'Alexander Cane', 'Esto no es cualquier tipo de libro de programación que aprieta todo en un libro de 300 páginas; hay Wikipedia para eso! Programación para principiantes es una hoja de ruta para cualquier persona, joven o mayor, que busca una manera de ...', 2019, 1, 'activo'),
(8, 'PHP', 'Esteban Gil', 'Lenguaje de programación para paginas web', 2021, 9, 'eliminado'),
(14, 'Curso de python', 'Sebastian', 'Curso interactivo del lenguaje de programación Python', 2005, 2, 'activo'),
(15, 'Lenguaje C', 'Enrique Vicente Bonet Esteban', 'Esta obra pretende explorar la lógica de programación a través del. Lenguaje C y los diagramas de flujo, con el propósito de ofrecer una.', 1992, 1, 'activo'),
(16, 'JAVA', 'Manuel Carriño', 'Explica ampliamente los conceptos básicos de la programación en el lenguaje JAVA.', 2000, 5, 'activo'),
(17, 'C++', 'Julio Mocada', 'Conceptos básicos de programación en el lenguaje de programación C++', 2004, 8, 'activo'),
(18, 'php', 'Carlos Salceda', 'Programación orientada a objetos en php', 1994, 10, 'activo'),
(19, 'La ilíada', 'Homero', 'La iliada', 1233, 12, ''),
(20, 'La ilíada', 'Homero', 'bwdbkj QDW', 12324, 12, ''),
(21, 'La ilíada', 'Homero', '12341qwwdqef', 12324, 32, ''),
(22, 'La ilíada', 'Homero', '123456789', 1234, 12, 'eliminado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_libro_usuario`
--

CREATE TABLE `libreria_libro_usuario` (
  `id_libro_usuario` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `id_libro_id` int(11) NOT NULL,
  `id_usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libreria_libro_usuario`
--

INSERT INTO `libreria_libro_usuario` (`id_libro_usuario`, `estado`, `id_libro_id`, `id_usuario_id`) VALUES
(1, 'devuelto', 2, 1),
(2, 'devuelto', 8, 1),
(3, 'devuelto', 3, 1),
(4, 'devuelto', 14, 2),
(6, 'devuelto', 3, 2),
(7, 'devuelto', 15, 1),
(8, 'alquilado', 16, 1),
(9, 'alquilado', 16, 2),
(10, 'devuelto', 3, 2),
(12, 'alquilado', 14, 3),
(13, 'alquilado', 16, 3),
(14, 'alquilado', 3, 3),
(15, 'alquilado', 17, 2),
(16, 'alquilado', 2, 2),
(17, 'alquilado', 15, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_rol`
--

CREATE TABLE `libreria_rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libreria_rol`
--

INSERT INTO `libreria_rol` (`id_rol`, `nombre_rol`) VALUES
(1, 'Administrador'),
(2, 'Usuario regular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_usuario`
--

CREATE TABLE `libreria_usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` longtext DEFAULT NULL,
  `contrasena` varchar(256) DEFAULT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libreria_usuario`
--

INSERT INTO `libreria_usuario` (`id_usuario`, `nombre`, `correo`, `contrasena`, `rol_id`) VALUES
(1, 'Gisell Escobar', 'egisell@gmail.com', '123', 2),
(2, 'Melany', 'melany@gmail.com', '12345', 1),
(3, 'Sebastian', 'sebas@gmail.com', '123', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `libreria_libro`
--
ALTER TABLE `libreria_libro`
  ADD PRIMARY KEY (`id_libro`);

--
-- Indices de la tabla `libreria_libro_usuario`
--
ALTER TABLE `libreria_libro_usuario`
  ADD PRIMARY KEY (`id_libro_usuario`),
  ADD KEY `libreria_libro_usuar_id_libro_id_12f8a3f6_fk_libreria_` (`id_libro_id`),
  ADD KEY `libreria_libro_usuario_id_usuario_id_c9207ad2_fk_auth_user_id` (`id_usuario_id`);

--
-- Indices de la tabla `libreria_rol`
--
ALTER TABLE `libreria_rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `libreria_usuario`
--
ALTER TABLE `libreria_usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `libreria_usuario_correo_53935787_uniq` (`correo`) USING HASH,
  ADD KEY `libreria_usuario_rol_id_92c49136_fk_libreria_rol_id_rol` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `libreria_libro`
--
ALTER TABLE `libreria_libro`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `libreria_libro_usuario`
--
ALTER TABLE `libreria_libro_usuario`
  MODIFY `id_libro_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `libreria_rol`
--
ALTER TABLE `libreria_rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `libreria_usuario`
--
ALTER TABLE `libreria_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `libreria_libro_usuario`
--
ALTER TABLE `libreria_libro_usuario`
  ADD CONSTRAINT `libreria_libro_usuar_id_libro_id_12f8a3f6_fk_libreria_` FOREIGN KEY (`id_libro_id`) REFERENCES `libreria_libro` (`id_libro`),
  ADD CONSTRAINT `libreria_libro_usuario_id_usuario_id_c9207ad2_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `libreria_usuario`
--
ALTER TABLE `libreria_usuario`
  ADD CONSTRAINT `libreria_usuario_rol_id_92c49136_fk_libreria_rol_id_rol` FOREIGN KEY (`rol_id`) REFERENCES `libreria_rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
