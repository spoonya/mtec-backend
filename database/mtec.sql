-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 27 2020 г., 19:48
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mtec`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `img`, `created_at`, `updated_at`) VALUES
(10, 'EkZ39blt8P.jpeg', '2020-06-16 03:16:12', '2020-06-16 03:16:12'),
(11, '4KAkeFKgwv.jpeg', '2020-06-16 03:16:12', '2020-06-16 03:16:12'),
(12, '6PpZanrdTq.jpeg', '2020-06-16 03:16:12', '2020-06-16 03:16:12'),
(13, 'amMAwlh3P7.jpeg', '2020-06-16 03:16:12', '2020-06-16 03:16:12'),
(14, 'NgEgJst86u.jpeg', '2020-06-16 03:16:12', '2020-06-16 03:16:12'),
(15, 'YJe9VUddTO.jpeg', '2020-06-16 03:16:12', '2020-06-16 03:16:12');

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`id`, `year`, `description`, `created_at`, `updated_at`) VALUES
(1, 1959, 'В здании Молодечненского облпотребсоюза начал свою деятельность Молодечненский кооперативный техникум', '2020-06-15 12:05:38', '2020-06-15 12:06:10'),
(2, 1967, 'Принято в эксплуатацию новое общежитие на 632 места. Для удобства проживающих в нем разместились столовая на 120 мест, здравпункт, читальный зал, комната отдыха', '2020-06-15 12:07:15', '2020-06-15 12:07:15');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `name`, `sort_order`, `url`, `created_at`, `updated_at`) VALUES
(1, NULL, 'О колледже', 6, '/about', NULL, NULL),
(2, NULL, 'Новости', 5, '/news', NULL, NULL),
(3, NULL, 'Абитуриенту', 4, '/abituriyentu', NULL, NULL),
(4, 1, 'История колледжа', 1, '/history', NULL, NULL),
(5, NULL, 'Специальности', 3, NULL, NULL, NULL),
(6, 5, 'Правоведение', 1, '/specialties/pravovedenie', NULL, NULL),
(7, NULL, 'Учащимся', 2, '/uchashchimsya', NULL, NULL),
(8, NULL, 'Контакты', 1, '/contacts', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2020_06_10_154718_create_users_table', 1),
(8, '2020_06_12_091128_create_resources_table', 1),
(9, '2020_06_12_095901_create_menu_table', 2),
(12, '2020_06_10_154435_create_news_table', 4),
(13, '2020_06_12_090125_create_specialties_table', 5),
(14, '2020_06_15_142531_create_history_table', 6),
(15, '2020_06_15_155109_create_gallery_table', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `img`, `content`, `description`, `views`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Прием документов  продлится до 16 июля', 'vL4GaMcFaa.jpeg', '<p>adfaf asdf asd faadsf asdf&nbsp;</p><p>&nbsp;asdfa sdfasdf asdf asd</p><p>asdf adsfasd f</p><p>gas s hertheth eth</p><p><b>asdf</b></p>', 'Прием документов продолжается. Если вы еще не подали документы, то можете сделать это до 16 июля!!!', 6, 'priem-dokumentov-prodlitsya-do-16-iyulya', '2020-06-15 09:58:10', '2020-06-16 06:27:35'),
(5, 'Нетрадиционное учебное занятие', 'cVlldpTl6C.png', '<div style=\"text-align: justify;\"><font color=\"#363636\" face=\"Tahoma, Arial, Verdana, sans-serif\"><span style=\"font-size: 12px;\"><i>19&nbsp; июня&nbsp; 2020 года&nbsp; преподавателем&nbsp; Орловской Алёной Владимировной было проведено занятие по математике в группе П106 по теме&nbsp; «Логарифмические выражения» с использованием нетрадиционного элемента на этапе урока по систематизации знаний учащихся в виде интеллектуальной игры «Мир логарифмов».</i></span></font></div>', '19  июня  2020 года  преподавателем  Орловской Алёной Владимировной было проведено занятие по математике в группе П106 по теме  «Логарифмические выражения» с использованием нетрадиционного элемента на этапе урока по систематизации знаний учащихся в виде интеллектуальной игры «Мир логарифмов».', 0, 'netradicionnoe-uchebnoe-zanyatie', '2020-06-21 00:12:12', '2020-06-21 00:12:12'),
(6, 'Педагог года 2020', 'YMzeJDWD6C.png', '<p><span style=\"color: rgb(54, 54, 54); font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 12px; text-align: justify;\">В целях повышения качества образования в колледжах (филиалах университета) потребительской кооперации, развития творческого потенциала и стимулирования творческой инициативы педагогов, создания условий для роста профессионального мастерства педагогических работников был проведен конкурс «Педагог года» среди учреждений образования потребительской кооперации.</span><br></p>', 'В целях повышения качества образования в колледжах (филиалах университета) потребительской кооперации, развития творческого потенциала и стимулирования творческой инициативы педагогов, создания условий для роста профессионального мастерства педагогических работников был проведен конкурс «Педагог года» среди учреждений образования потребительской кооперации.', 2, 'pedagog-goda-2020', '2020-06-21 00:13:33', '2020-06-25 11:29:58'),
(7, 'Конкурс виртуальных музеев Великая Победа: 75 мирных лет!', '3tCahQ701q.png', '<p>В рамках Плана подготовки и проведения мероприятий по празднованию 75-й годовщины освобождения Республики Беларусь от немецко-фашистских захватчиков и Победы советского народа в Великой Отечественной войне учреждением образования «Республиканский институт профессионального образования» проведен республиканский конкурс виртуальных музеев «Великая Победа: 75 мирных лет!» на сайтах учреждений профессионального образования.<br></p>', 'В рамках Плана подготовки и проведения мероприятий по празднованию 75-й годовщины освобождения Республики Беларусь от немецко-фашистских захватчиков и Победы советского народа в Великой Отечественной войне учреждением образования «Республиканский институт профессионального образования» проведен республиканский конкурс виртуальных музеев «Великая Победа: 75 мирных лет!» на сайтах учреждений профессионального образования.', 0, 'konkurs-virtualnyh-muzeev-velikaya-pobeda-75-mirnyh-let', '2020-06-21 00:15:24', '2020-06-21 00:15:24'),
(8, '“Земля – наш общий дом”', 'NTcDzRoWSj.jpeg', '<p><b>27 марта 2020 года</b> на базе филиала «Молодечненский государственный политехнический колледж» учреждения образования «Республиканский институт&nbsp; профессионального образования» прошла научно-практическая конференция “Земля – наш общий дом”.&nbsp;<br></p>', '27 марта 2020 года на базе филиала «Молодечненский государственный политехнический колледж» учреждения образования «Республиканский институт  профессионального образования» прошла научно-практическая конференция “Земля – наш общий дом”.', 2, 'zemlya-nash-obshchiy-dom', '2020-06-21 00:17:09', '2020-06-25 11:23:41'),
(9, 'Мы выбираем жизнь', '6JjanzMfJi.jpeg', '<p>1 апреля 2020 года в 23 аудитории колледжа прошло совместное мероприятие с ЦБ им М. Богдановича, посвященное борьбе с алкогольной, наркотической зависимость и табакокурением под названием «Мы выбираем жизнь».<br></p>', '1 апреля 2020 года в 23 аудитории колледжа прошло совместное мероприятие с ЦБ им М. Богдановича, посвященное борьбе с алкогольной, наркотической зависимость и табакокурением под названием «Мы выбираем жизнь».', 1, 'my-vybiraem-zhizn', '2020-06-21 00:18:48', '2020-06-21 00:19:16'),
(10, 'Открытое учебное занятие', 'pXD2TItB4g.jpeg', '<p>24 марта 2020 года преподавателем С.С. Лаптик проведено открытое учебное занятие по дисциплине \"Информационные технологии\" по теме \"Построение и редактирование диаграмм MS Excel\".<br></p>', '24 марта 2020 года преподавателем С.С. Лаптик проведено открытое учебное занятие по дисциплине \"Информационные технологии\" по теме \"Построение и редактирование диаграмм MS Excel\".', 2, 'otkrytoe-uchebnoe-zanyatie', '2020-06-21 00:21:55', '2020-06-21 00:23:38'),
(11, 'Открытое учебное занятие', 'agQgDeGjLY.jpeg', '<p>19 марта 2020 года преподавателем Скадорва Е.О. проведено открытое учебное занятие по Учебной практике по разработке и сопровождению программного обеспечения по теме «Создание пакета диаграмм, описывающих проектируемую систему; диаграммы вариантов использования, классов, состояния деятельности.<br></p>', '19 марта 2020 года преподавателем Скадорва Е.О. проведено открытое учебное занятие по Учебной практике по разработке и сопровождению программного обеспечения по теме «Создание пакета диаграмм, описывающих проектируемую систему; диаграммы вариантов использования, классов, состояния деятельности.', 1, 'otkrytoe-uchebnoe-zanyatie-1', '2020-06-21 00:25:25', '2020-06-21 11:12:42');

-- --------------------------------------------------------

--
-- Структура таблицы `resources`
--

CREATE TABLE `resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `resources`
--

INSERT INTO `resources` (`id`, `img`, `title`, `url`, `created_at`, `updated_at`) VALUES
(1, 'kNHXbAZLnR.png', 'Белкоопсоюз', 'http://bks.gov.by', '2020-06-14 19:47:30', '2020-06-14 19:47:30'),
(2, '19V0JIamgD.png', 'МЧС Республики Беларусь', 'https://mchs.gov.by', '2020-06-21 00:27:30', '2020-06-21 00:27:30'),
(3, 'CgOnits3Sz.png', 'Сайт Республики Беларусь', 'https://www.belarus.by/', '2020-06-21 00:28:17', '2020-06-21 00:28:17'),
(4, 'dBBMIkDfal.jpeg', 'Выборы президента 2020', 'http://molodechno.minsk-region.by/vybory-2020', '2020-06-21 00:28:54', '2020-06-21 00:28:55'),
(5, '2s3K9bX8bA.jpeg', 'Справочный ресурс для поступающих', 'https://www.abiturient.by', '2020-06-21 00:29:29', '2020-06-21 00:29:29');

-- --------------------------------------------------------

--
-- Структура таблицы `specialties`
--

CREATE TABLE `specialties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_reception` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `specialties`
--

INSERT INTO `specialties` (`id`, `code`, `name`, `qualification`, `img`, `img_bg`, `is_reception`, `slug`, `created_at`, `updated_at`) VALUES
(1, '2-24 01 02', 'Правоведение', 'юрист', 'EJH3KiciuX.svg', 'ENKCyIc6Vn.jpeg', 1, 'pravovedenie', '2020-06-15 11:13:22', '2020-06-16 06:26:56'),
(2, '2-26 02 32', 'Операционная деятельность в логистике', 'операционный логист', 'gZ85EQyzuD.svg', '6AiuJXhJvD.jpeg', 1, 'operacionnaya-deyatelnost-v-logistike', '2020-06-21 00:33:00', '2020-06-25 11:19:35'),
(3, '2-25 01 35', 'Бухгалтерский учёт, анализ и контроль', 'бухгалтер', 'hXPTvJVAHn.svg', 'lvebSBZFL1.jpeg', 0, 'buhgalterskiy-uchet-analiz-i-kontrol', '2020-06-21 00:42:02', '2020-06-21 00:42:03');

-- --------------------------------------------------------

--
-- Структура таблицы `specialties_description`
--

CREATE TABLE `specialties_description` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tests` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `specialties_description`
--

INSERT INTO `specialties_description` (`id`, `form`, `specialization`, `period`, `short_period`, `tests`, `education`, `plan`, `speciality_id`, `created_at`, `updated_at`) VALUES
(1, 'дневная, платная', 'хозяйственно-правовая и кадровая работа', '2 года 10 месяцев', '2 г. 10 м.', 'конкурс среднего балла документа об образовании', '9 классов', '25', 1, '2020-06-14 19:28:25', '2020-06-14 19:28:25'),
(2, 'дневная, заочная, платная', 'хозяйственно-правовая и кадровая работа', 'дневная форма – 1 год 10 месяцев, заочная форма – 2 года 7 месяцев', '1 г. 10 м. - дневная, 2 г. 7 м. - заочная', 'конкурс среднего балла документа об образовании', '11 классов', 'дневное – 28, заочное – 30', 1, '2020-06-15 10:18:23', '2020-06-15 10:18:23'),
(3, 'дневная, платная', NULL, '2 года 10 месяцев', '2 г. 10 м.', 'конкурс среднего балла документа об образовании', '9 классов', '25', 2, '2020-06-21 00:36:14', '2020-06-21 00:36:14'),
(4, 'дневная, платная', NULL, '1 год 10 месяцев', '1 г. 10 м.', 'результаты ЦТ (русский или белорусский язык, математика) и средний балл документа об образовании', '11 классов', '25', 2, '2020-06-21 00:37:58', '2020-06-21 00:37:58');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'koryavi', '$2y$10$kYU7jTXzpqKKwwUKFQfJneEdVEb4bwUpYzJKN0i0ANUrMsH17NDcC', 'Корявый Роман Петрович', 1, NULL, '2020-06-14 19:12:23', '2020-06-14 19:12:23');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_parent_id_index` (`parent_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `specialties_description`
--
ALTER TABLE `specialties_description`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `history`
--
ALTER TABLE `history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `resources`
--
ALTER TABLE `resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `specialties`
--
ALTER TABLE `specialties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `specialties_description`
--
ALTER TABLE `specialties_description`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
