-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 19 2020 г., 11:56
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `user_id_to` int(11) NOT NULL,
  `ot_user_to` int(11) NOT NULL,
  `message` text NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `Name`, `user_id_to`, `ot_user_to`, `message`, `time`) VALUES
(1, 'Peter', 1, 2, 'Привет', '2020-05-03'),
(2, 'Ivan', 2, 1, 'Hi', '2020-03-05'),
(3, 'Kate', 1, 2, 'Как дела?', '2020-03-05'),
(4, 'Vika', 2, 1, 'Отлично.', '2020-03-05'),
(5, 'David', 3, 4, 'Добрый день', '2020-03-05'),
(6, 'Mike', 4, 3, 'Привет)', '2020-03-05'),
(7, 'Jack', 6, 7, 'Здравствуй', '2020-03-05');

-- --------------------------------------------------------

--
-- Структура таблицы `polzovateli`
--

CREATE TABLE `polzovateli` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `polzovateli`
--

INSERT INTO `polzovateli` (`id`, `name`, `telephone`, `email`, `photo`) VALUES
(1, 'Peter', '+9574832934', 'peter@i.ua', 'images/user2.png'),
(2, 'Ivan', '+9624567896', 'peter@i.ua', 'images/user.png'),
(3, 'Kate', '+9345674342', 'peter@i.ua', 'images/user2.png'),
(4, 'Vika', '+8599583021', 'peter@i.ua', 'images/user.png'),
(5, 'David', '+795432106', 'peter@i.ua', 'images/user.png'),
(6, 'Mike', '+950978213', 'peter@i.ua', 'images/user2.png'),
(7, 'Jack', '+9574852698', 'peter@i.ua', 'images/user.png');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `polzovateli`
--
ALTER TABLE `polzovateli`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `polzovateli`
--
ALTER TABLE `polzovateli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
