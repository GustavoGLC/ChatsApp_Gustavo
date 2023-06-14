-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2023 a las 12:15:39
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chatsapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contacto_id` int(11) NOT NULL,
  `creado_en` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id`, `usuario_id`, `contacto_id`, `creado_en`) VALUES
(751, 97, 98, '2023-06-12 19:26:48'),
(755, 97, 7, '2023-06-12 22:16:01'),
(756, 97, 5, '2023-06-12 22:16:01'),
(757, 97, 4, '2023-06-12 22:16:01'),
(758, 97, 9, '2023-06-12 22:16:01'),
(760, 97, 1, '2023-06-12 22:16:01'),
(761, 97, 3, '2023-06-12 22:16:01'),
(762, 97, 8, '2023-06-12 22:16:01'),
(763, 97, 98, '2023-06-12 22:16:01'),
(764, 97, 6, '2023-06-12 22:16:01'),
(765, 97, 10, '2023-06-12 22:16:01'),
(766, 98, 2, '2023-06-13 13:28:46'),
(768, 98, 103, '2023-06-14 11:37:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL,
  `nombre_archivo` varchar(255) NOT NULL,
  `creado_en` datetime DEFAULT current_timestamp(),
  `mensaje_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `emisor_id` int(11) NOT NULL,
  `receptor_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `creado_en` datetime DEFAULT current_timestamp(),
  `leido` enum('no','si') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id`, `emisor_id`, `receptor_id`, `contenido`, `creado_en`, `leido`) VALUES
(1, 97, 98, 'Hola Pascual, ¿cómo estás?', '2023-06-12 19:30:00', 'si'),
(2, 98, 97, '¡Hola Drake! Todo bien, ¿y tú?', '2023-06-12 19:35:00', 'si'),
(3, 97, 7, 'Hey Daniel, ¿qué tal?', '2023-06-12 19:40:00', 'no'),
(4, 7, 97, '¡Hola Drake! Todo bien por acá, ¿y contigo?', '2023-06-12 19:45:00', 'si'),
(5, 97, 5, 'Hola David, ¿qué estás haciendo?', '2023-06-12 19:50:00', 'no'),
(6, 5, 97, '¡Hola Drake! Estoy trabajando en un nuevo proyecto, ¿tú?', '2023-06-12 19:55:00', 'si'),
(7, 97, 4, 'Emily, ¿te gustaría salir a cenar esta noche?', '2023-06-12 20:00:00', 'si'),
(8, 4, 97, '¡Hola Drake! Me encantaría, ¿a qué hora y dónde?', '2023-06-12 20:05:00', 'si'),
(9, 97, 9, 'James, ¿estás libre para hablar ahora?', '2023-06-12 20:10:00', 'no'),
(10, 9, 97, '¡Hola Drake! Sí, estoy disponible. ¿En qué puedo ayudarte?', '2023-06-12 20:15:00', 'si'),
(11, 97, 2, 'Jane, ¿qué planes tienes para el fin de semana?', '2023-06-12 20:20:00', 'no'),
(12, 2, 97, '¡Hola Drake! No tengo planes definidos aún, ¿tienes alguna sugerencia?', '2023-06-12 20:25:00', 'si'),
(13, 97, 1, 'John, ¿vamos al cine esta noche?', '2023-06-12 20:30:00', 'no'),
(14, 1, 97, '¡Hola Drake! Me encantaría, ¿a qué hora y en qué cine?', '2023-06-12 20:35:00', 'si'),
(15, 97, 3, 'Michael, ¿has probado el nuevo restaurante de la ciudad?', '2023-06-12 20:40:00', 'no'),
(16, 3, 97, '¡Hola Drake! Sí, estuve allí la semana pasada. La comida es excelente.', '2023-06-12 20:45:00', 'si'),
(17, 97, 8, 'Olivia, ¿podemos reunirnos para discutir el proyecto mañana?', '2023-06-12 20:50:00', 'no'),
(18, 8, 97, '¡Hola Drake! Por supuesto, ¿a qué hora te parece conveniente?', '2023-06-12 20:55:00', 'si'),
(19, 97, 98, 'Hola Pascual, ¿cómo estás?', '2023-06-12 21:00:00', 'si'),
(20, 98, 97, '¡Hola Drake! Todo bien, ¿y tú?', '2023-06-12 21:05:00', 'si'),
(21, 97, 7, 'Hey Daniel, ¿qué tal?', '2023-06-12 21:10:00', 'no'),
(22, 7, 97, '¡Hola Drake! Todo bien por acá, ¿y contigo?', '2023-06-12 21:15:00', 'si'),
(23, 97, 5, 'Hola David, ¿qué estás haciendo?', '2023-06-12 21:20:00', 'no'),
(24, 5, 97, '¡Hola Drake! Estoy trabajando en un nuevo proyecto, ¿tú?', '2023-06-12 21:25:00', 'si'),
(25, 97, 4, 'Emily, ¿te gustaría salir a cenar esta noche?', '2023-06-12 21:30:00', 'si'),
(26, 4, 97, '¡Hola Drake! Me encantaría, ¿a qué hora y dónde?', '2023-06-12 21:35:00', 'si'),
(27, 97, 9, 'James, ¿estás libre para hablar ahora?', '2023-06-12 21:40:00', 'no'),
(28, 9, 97, '¡Hola Drake! Sí, estoy disponible. ¿En qué puedo ayudarte?', '2023-06-12 21:45:00', 'si'),
(29, 97, 2, 'Jane, ¿qué planes tienes para el fin de semana?', '2023-06-12 21:50:00', 'no'),
(30, 2, 97, '¡Hola Drake! No tengo planes definidos aún, ¿tienes alguna sugerencia?', '2023-06-12 21:55:00', 'no'),
(31, 97, 1, 'John, ¿has visto la última película de acción?', '2023-06-12 22:00:00', 'no'),
(32, 1, 97, '¡Hola Drake! Sí, la vi. Fue increíble, ¿tú la viste?', '2023-06-12 22:05:00', 'si'),
(33, 97, 3, 'Michael, ¿te gustaría jugar al tenis el próximo sábado?', '2023-06-12 22:10:00', 'no'),
(34, 3, 97, '¡Hola Drake! Claro, me encantaría. ¿A qué hora podemos jugar?', '2023-06-12 22:15:00', 'no'),
(35, 97, 8, 'Olivia, ¿has terminado la presentación para mañana?', '2023-06-12 22:20:00', 'no'),
(36, 8, 97, '¡Hola Drake! Sí, ya está lista. ¿Quieres que te la envíe?', '2023-06-12 22:25:00', 'si'),
(37, 97, 98, 'Hola Pascual, ¿cómo ha sido tu día?', '2023-06-12 22:30:00', 'si'),
(38, 98, 97, '¡Hola Drake! Ha sido un día agitado, pero todo bien. ¿Y tú?', '2023-06-12 22:35:00', 'si'),
(39, 97, 7, 'Hey Daniel, ¿quieres tomar un café mañana?', '2023-06-12 22:40:00', 'no'),
(40, 7, 97, '¡Hola Drake! Claro, me encantaría. ¿Nos vemos en la cafetería de siempre?', '2023-06-12 22:45:00', 'si'),
(41, 97, 5, 'Hola David, ¿has probado el nuevo restaurante italiano?', '2023-06-12 22:50:00', 'no'),
(42, 5, 97, '¡Hola Drake! Sí, estuve allí la semana pasada. La comida es deliciosa.', '2023-06-12 22:55:00', 'si'),
(43, 97, 4, 'Emily, ¿puedes ayudarme con el informe de ventas?', '2023-06-12 23:00:00', 'si'),
(44, 4, 97, '¡Hola Drake! Por supuesto, cuéntame qué necesitas.', '2023-06-12 23:05:00', 'si'),
(45, 97, 9, 'James, ¿vamos al concierto de rock el próximo viernes?', '2023-06-12 23:10:00', 'no'),
(46, 9, 97, '¡Hola Drake! Me encantaría. ¿Ya tienes las entradas?', '2023-06-12 23:15:00', 'no'),
(47, 97, 2, 'Jane, ¿quieres venir a mi fiesta de cumpleaños el sábado?', '2023-06-12 23:20:00', 'no'),
(48, 2, 97, '¡Hola Drake! Claro, contaré con gusto. ¿A qué hora comienza?', '2023-06-12 23:25:00', 'no'),
(510, 97, 98, 'Buenas pascual', '2023-06-12 19:27:27', 'si'),
(511, 97, 98, 'Que tal', '2023-06-12 19:28:20', 'si'),
(513, 97, 98, '🤔', '2023-06-12 19:30:49', 'si'),
(514, 98, 97, 'Hola drake', '2023-06-12 19:30:59', 'no'),
(516, 97, 98, 'PAscual', '2023-06-12 19:37:26', 'si'),
(519, 97, 7, 'Hey Dani', '2023-06-12 22:20:13', 'no'),
(530, 97, 6, 'Mensaje de 97 a 6', '2023-06-12 22:30:17', 'no'),
(531, 97, 10, 'Mensaje de 97 a 10', '2023-06-12 22:30:17', 'no'),
(545, 97, 6, 'Mensaje de 97 a 6', '2023-06-12 22:30:41', 'no'),
(546, 97, 10, 'Mensaje de 97 a 10', '2023-06-12 22:30:41', 'no'),
(550, 98, 98, 'Mensaje de 98 a 98', '2023-06-12 22:30:41', 'si'),
(551, 98, 98, 'Mensaje de 98 a 98', '2023-06-12 22:30:41', 'si'),
(552, 97, 4, '¿ Estás disponible ?🤗', '2023-06-13 12:34:44', 'no'),
(553, 98, 2, 'Cambio de foto de perfil:  Usuario hace clic en la imagen de perfil en la cabecera de usuario. Aparece una opción para cambiar la foto de perfil. Usuario selecciona una nueva foto de perfil. La foto de perfil se actualiza y se muestra en la cabecera de usuario. Lista de amigos:  Usuario accede a la pantalla principal. La lista de amigos disponibles se muestra en forma de cajas separadas. Cada caja contiene la imagen de perfil y el estado de conexión de cada amigo. Usuario hace clic en una caja para abrir una conversación con ese amigo. Envío de mensajes:  Dentro de la conversación abierta, el usuario escribe un mensaje en el campo de texto. Usuario puede presionar el botón de enviar o utilizar la tecla Enter para enviar el mensaje. El mensaje se muestra en forma de burbujas de chat, con el nombre del remitente y la hora del mensaje. Agregar amigos:  Usuario accede a la función de búsqueda. Usuario ingresa el nombre de usuario de la persona que desea agregar. Si se encuentra una coincidencia, se muestra una caja con la información del amigo. Usuario puede enviar una solicitud de amistad al amigo seleccionado. Envío de imágenes:  Usuario selecciona el botón específico para enviar imágenes. Usuario elige una imagen de su dispositivo. La imagen seleccionada se envía en la conversación activa. Gestión de conversaciones:  Usuario puede volver a la lista de amigos para seleccionar otra conversación. Usuario tiene la opción de cerrar la aplicación. Funciones adicionales como archivar o eliminar conversaciones antiguas pueden estar disponibles. Edición de cuenta de usuario:  Usuario accede a la configuración de la cuenta. Usuario puede cambiar la foto de perfil, actualizar información personal (nombre, apellido), y modificar la contraseña. Recuerda que estos diagramas de flujo de alto nivel son una representación simplificada de las funcionalidades. Puedes utilizar símbolos estándar de diagramas de flujo para mostrar los diferentes pasos y decisiones en cada proceso. ¡Buena suerte con la documentación de tu TFG! Si necesitas más ayuda, no dudes en p', '2023-06-13 13:29:06', 'no'),
(557, 97, 4, 'qwdaw', '2023-06-14 00:01:37', 'no'),
(558, 97, 4, 'eyyyoo', '2023-06-14 11:29:58', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena` char(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `foto` varchar(200) NOT NULL DEFAULT 'predeterminada.jpg',
  `creado_en` datetime DEFAULT current_timestamp(),
  `actualizado_en` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ultima_vez` datetime NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(90) NOT NULL DEFAULT 'Hey there!, I´m using Whatsapp!',
  `uid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `contrasena`, `nombre`, `apellido`, `correo_electronico`, `telefono`, `foto`, `creado_en`, `actualizado_en`, `ultima_vez`, `estado`, `uid`) VALUES
(1, 'John', '*917DD8F3E6F9FF3F0FB9AA354D0733E6D08D902C', 'John', 'Doe', 'johndoe@example.com', '1234567890', 'img1.jpg', '2022-05-01 10:00:00', '2023-06-12 10:00:00', '2023-06-11 08:30:00', 'Hey there!, I´m using Whatsapp!', 'uid1'),
(2, 'Jane', '*917DD8F3E6F9FF3F0FB9AA354D0733E6D08D902C', 'Juan', 'Smith', 'juansmith@example.com', '0987654321', 'img2.jpg', '2023-01-15 11:00:00', '2023-06-12 22:19:49', '2023-06-12 14:45:00', 'Hey there!, I´m using Whatsapp!', 'uid2'),
(3, 'Michael', '*917DD8F3E6F9FF3F0FB9AA354D0733E6D08D902C', 'Michael', 'Johnson', 'michaeljohnson@example.com', '5555555555', 'img8.jpg', '2023-06-01 12:00:00', '2023-06-12 22:17:44', '2023-05-25 16:20:00', 'Hey there!, I´m using Whatsapp!', 'uid3'),
(4, 'Emily', '*917DD8F3E6F9FF3F0FB9AA354D0733E6D08D902C', 'Emily', 'Davis', 'emilydavis@example.com', '1111111111', 'img4.jpg', '2023-06-08 13:00:00', '2023-06-12 13:00:00', '2023-06-10 11:10:00', 'Hey there!, I´m using Whatsapp!', 'uid4'),
(5, 'David', '*917DD8F3E6F9FF3F0FB9AA354D0733E6D08D902C', 'David', 'Anderson', 'davidanderson@example.com', '9999999999', 'img5.jpg', '2023-06-10 14:00:00', '2023-06-12 14:00:00', '2023-06-12 09:15:00', 'Hey there!, I´m using Whatsapp!', 'uid5'),
(6, 'Sarah', '*917DD8F3E6F9FF3F0FB9AA354D0733E6D08D902C', 'Sarah', 'Wilson', 'sarahwilson@example.com', '7777777777', 'img9.jpg', '2023-06-12 15:00:00', '2023-06-12 22:18:43', '2023-06-12 10:25:00', 'Hey there!, I´m using Whatsapp!', 'uid6'),
(7, 'Daniela', '*917DD8F3E6F9FF3F0FB9AA354D0733E6D08D902C', 'Daniela', 'Brown', 'danielabrown@example.com', '2222222222', 'img7.jpg', '2023-06-12 16:00:00', '2023-06-12 22:47:58', '2023-06-12 16:00:00', 'Hey there!, I´m using Whatsapp!', 'uid7'),
(8, 'Olivia', '*917DD8F3E6F9FF3F0FB9AA354D0733E6D08D902C', 'Olivia', 'Martinez', 'oliviamartinez@example.com', '3333333333', 'img3.jpg', '2023-06-12 17:00:00', '2023-06-12 22:16:46', '2023-06-10 14:30:00', 'Hey there!, I´m using Whatsapp!', 'uid8'),
(9, 'James', '*917DD8F3E6F9FF3F0FB9AA354D0733E6D08D902C', 'James', 'Taylor', 'jamestaylor@example.com', '4444444444', 'img6.jpg', '2023-06-12 18:00:00', '2023-06-12 22:18:47', '2023-06-12 18:00:00', 'Hey there!, I´m using Whatsapp!', 'uid9'),
(10, 'Sophia', '*917DD8F3E6F9FF3F0FB9AA354D0733E6D08D902C', 'Sophia', 'Moore', 'sophiamoore@example.com', '6666666666', 'predeterminada.jpg', '2023-06-12 19:00:00', '2023-06-12 22:45:30', '2023-05-01 20:45:00', 'Hey there!, I´m using Whatsapp!', 'uid10'),
(97, 'Drake', '$2y$10$W4aQbQYH26sz7ANx.icLM.ntmPJSIVthBgFgWe/wn9zPox7gZgb.u', 'Drake', 'Aubrey', 'drakoll@drake.com', '666666666', 'drake.jpg', '2023-05-22 16:15:00', '2023-06-14 12:14:18', '2023-06-14 11:34:47', '&#39;Hi there!, I`m using ChatsApp!&#39;', '2d66b0beb1ef36acea8ec9d6bc49430b4239c541dcd1f68355c4c7142ea35f7b0a683275'),
(98, 'Pascual', '$2y$10$ohG4JUFtIwv3SA0Odl5nTuTJPOfUjqfMA5Sll5t0qmKXPF59QYBrm', 'Pascual', '', 'pascual@email.com', '666666666', 'profesor.webp', '2023-05-24 19:17:25', '2023-06-14 12:14:10', '2023-06-14 12:14:10', 'Hey there!, I´m using Whatsapp!', 'faffdb87cf5996b30fa7f79fce39fca76576a0a041be38c662d746f32147bdf070796719'),
(103, 'Invitado', '$2y$10$7lEba4XxCtwGpWelpXdAr.hwl/AlIKToKkxWacbat3q3dN6sKG2Tq', 'Invitado', 'TFG', 'invitado@gmail.com', '666666661', 'img8.jpg', '2023-06-14 11:35:48', '2023-06-14 12:13:47', '2023-06-14 12:13:47', 'Hey there!, I´m using Whatsapp!', 'da62a25a2b730af385539e163a5aba088a4e24e789a6d22025da6a14b1086ceffb07462c');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `contacto_id` (`contacto_id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_imagenes_mensaje` (`mensaje_id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emisor_id` (`emisor_id`),
  ADD KEY `receptor_id` (`receptor_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=770;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD CONSTRAINT `contactos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `contactos_ibfk_2` FOREIGN KEY (`contacto_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `fk_imagenes_mensaje` FOREIGN KEY (`mensaje_id`) REFERENCES `mensajes` (`id`);

--
-- Filtros para la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD CONSTRAINT `mensajes_ibfk_1` FOREIGN KEY (`emisor_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `mensajes_ibfk_2` FOREIGN KEY (`receptor_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
