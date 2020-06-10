-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2019 at 09:55 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codejam`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add coder', 7, 'add_coder'),
(26, 'Can change coder', 7, 'change_coder'),
(27, 'Can delete coder', 7, 'delete_coder'),
(28, 'Can view coder', 7, 'view_coder');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$YGkBmrMn5BIA$3rFub5B7YWVsBpRWAj88oQ9uzhMF5YOK/+2bm6SJGPw=', '2019-04-12 05:25:19.953627', 0, 'ashish', 'a', 'k', 'ashishkotecha80@gmail.com', 0, 1, '2019-04-11 12:12:16.131987'),
(2, 'pbkdf2_sha256$120000$lbKAHxWepvIO$ur5FX+ygpg/GfAOD0hzdloHYhKwaymwDDIPC3Vu9T30=', NULL, 0, 'ashish1', 'a', 'k', 'ashishkotecha80@gmail.com', 0, 1, '2019-04-11 16:17:03.053626'),
(3, 'pbkdf2_sha256$120000$W5NcpvnIvtMx$1tnST3nAABJrxd6z5rXz46y2+JNHG89hbry+ZacwkCU=', NULL, 0, 'a', 'a', 'k', 'ashishkotecha80@gmail.com', 0, 1, '2019-04-11 16:19:04.921555'),
(4, 'pbkdf2_sha256$120000$jiQzOHpkrxy3$KRdR8bDFrG329ZjGzJEmIoX3rRDN01TZxgWOj+/F3Kk=', NULL, 0, 'ak', 'a', 'k', 'ashishkotecha80@gmail.com', 0, 1, '2019-04-11 16:20:34.928288'),
(5, 'pbkdf2_sha256$120000$EqeAln6JK7Lj$jm4VULNzTSixbewdNKYSDk7pK8DFeNUxoQxmqIoy784=', NULL, 0, 'ashish2', 'a', 'k', 'ashishkotecha80@gmail.com', 0, 1, '2019-04-11 16:21:25.152468'),
(6, 'pbkdf2_sha256$120000$9oK8OmeBNCGG$TSrwrUp6SvY1xr2xCdg+7f3IUab0FqRUF15yjLUzjsI=', NULL, 0, 'ashish111', 'a', 'k', 'ashishkotecha80@gmail.com', 0, 1, '2019-04-11 16:23:26.847532'),
(7, 'pbkdf2_sha256$120000$GR2Q0Oh7n4Ut$9hk8xxwkr4rPHRNFJ/Yx+M417VvFe1P4WI83PNC2etM=', NULL, 0, 'ashish1111', 'a', 'k', 'ashishkotecha80@gmail.com', 0, 1, '2019-04-11 16:24:29.943250'),
(8, 'pbkdf2_sha256$120000$c7k9bvkD1xaY$NLvNCA/uN/MOl/kG0NtwIcBFHVOBb6bECVgpAp4kh2k=', NULL, 0, 'samyak', 'a', 'k', 'ashishkotecha12@gmail.com', 0, 1, '2019-04-11 16:55:51.881294'),
(9, 'pbkdf2_sha256$120000$zCG6L0PWl5xy$Px3E5zGr8y8i390uTz5ahBIo10KSVmCERZ0pVaqSB1E=', NULL, 0, 'sam', 'a', 'k', 'ashishkotecha12@gmail.com', 0, 1, '2019-04-11 17:03:12.867705'),
(10, 'pbkdf2_sha256$120000$lL327C6kn2hj$0EthDe9J59/4ROX7HXFitFJcs+uZ+RYVOEO+Js76Aqk=', NULL, 0, 'SJM', 's', 'j', 'ashishkotecha12@gmail.com', 0, 1, '2019-04-11 17:08:15.174207'),
(11, 'pbkdf2_sha256$120000$iMvUk9TYGCFy$xoVcrjl1b8bGEKhtledyVTkjUbFF90trwqehGO39cUY=', NULL, 0, 'has', 'a', 'k', 'samyak2219@gmail.com', 0, 1, '2019-04-11 17:13:24.686568'),
(12, 'pbkdf2_sha256$120000$uyvEop9ulX3n$2gJyAkZ8XQJacwElGJXqwDfTuoRkMNnCHlgublu6aZk=', '2019-04-12 07:00:36.209546', 0, 'ank', 'a', 'k', 'ashishkotecha12@gmail.com', 0, 1, '2019-04-12 04:25:58.902839'),
(13, 'pbkdf2_sha256$120000$0uUZCwUKsBTk$9D7l0EFeCbGjLTb9rTIA+e2p5hvdvpUJtMgDhZceoq0=', '2019-04-12 05:33:19.745822', 0, 'harsh', 'h', 'm', 'harshcerti@gmail.com', 0, 1, '2019-04-12 05:19:01.906123'),
(14, 'pbkdf2_sha256$120000$5lvTeqZp4CA8$PIERgNDeDKciMfnS6Aw+qmI+CgFgVC13Zab3E/VmasQ=', '2019-04-12 07:11:17.536216', 0, 'ashish123', 'a', 'k', 'ashishkotecha12@gmail.com', 0, 1, '2019-04-12 07:07:29.516695');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `compile_coder`
--

CREATE TABLE `compile_coder` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `score` varchar(20) NOT NULL,
  `qno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compile_coder`
--

INSERT INTO `compile_coder` (`id`, `uname`, `code`, `score`, `qno`) VALUES
(1, 'ashish', 'ashish2.c', '100', '2'),
(2, 'ashish', 'ashish3.c', '100', '3'),
(3, 'ank', 'ank2.c', '100', '2'),
(4, 'harsh', 'harsh2.c', '100', '2'),
(5, 'ashish123', 'ashish1232.c', '100', '2');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'compile', 'coder'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-04-11 12:10:57.796367'),
(2, 'auth', '0001_initial', '2019-04-11 12:11:08.776021'),
(3, 'admin', '0001_initial', '2019-04-11 12:11:10.981538'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-04-11 12:11:11.069160'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-11 12:11:11.145473'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-11 12:11:12.525546'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-11 12:11:14.062689'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-11 12:11:15.597690'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-11 12:11:15.701794'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-11 12:11:16.691725'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-11 12:11:16.723065'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-11 12:11:16.795558'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-11 12:11:17.796395'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-11 12:11:18.925988'),
(15, 'compile', '0001_initial', '2019-04-11 12:11:19.596128'),
(16, 'compile', '0002_auto_20190301_1704', '2019-04-11 12:11:19.672192'),
(17, 'compile', '0003_coder_code2', '2019-04-11 12:11:21.397887'),
(18, 'compile', '0004_auto_20190406_1809', '2019-04-11 12:11:22.814610'),
(19, 'compile', '0005_coder_qno', '2019-04-11 12:11:23.507568'),
(20, 'sessions', '0001_initial', '2019-04-11 12:11:24.212223');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('21k0ff9cja68an3s6vrkrl72oknomz6g', 'ZjczYTI0ODUyOGQ2OWFmNWRjNzc0NTcxZmNkZjFkZmYxMGEyMGJkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMmExMjgzOTRhNjI2YmI5MGUyYjdjYmRkN2M0ZWJkNzE4OTU2YjJiIiwic25hbWUiOiJhc2hpc2giLCJfc2Vzc2lvbl9leHBpcnkiOjB9', '2019-04-25 12:28:37.663020'),
('he2pko4uunthjw4bvyv4fgpmnvkpv4ex', 'ZjczYTI0ODUyOGQ2OWFmNWRjNzc0NTcxZmNkZjFkZmYxMGEyMGJkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMmExMjgzOTRhNjI2YmI5MGUyYjdjYmRkN2M0ZWJkNzE4OTU2YjJiIiwic25hbWUiOiJhc2hpc2giLCJfc2Vzc2lvbl9leHBpcnkiOjB9', '2019-04-25 13:15:04.345777'),
('iubb45m3khx5j9b3j62jnf96rq0008jl', 'YzNhYjJmNjllZDc2ZmE1MDVlYjM4ZTc4YTJmZmM4YmMxYmJjOWM2MTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjE2ZDc1YWMwYmY0NmIwYzk3ZTYxZjgxOTNjNjk0Yjk1MTQ5MDdlYiIsInNuYW1lIjoiaGFyc2giLCJfc2Vzc2lvbl9leHBpcnkiOjAsInFfbm8iOiIyIn0=', '2019-04-26 05:34:18.288409'),
('z0jyqk762usqykicu0t3sn7qp5cb2bgd', 'YzBlYWEwZDIzOTAxNmU0N2U4NGE5ZmY5OTk0NThiNjYxOTFlZTdkODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMmExMjgzOTRhNjI2YmI5MGUyYjdjYmRkN2M0ZWJkNzE4OTU2YjJiIiwic25hbWUiOiJhc2hpc2giLCJfc2Vzc2lvbl9leHBpcnkiOjAsInFfbm8iOiIyIn0=', '2019-04-25 12:21:54.510571'),
('z1rpejuo6te8bffojnranms0khuyu4zp', 'ZjczYTI0ODUyOGQ2OWFmNWRjNzc0NTcxZmNkZjFkZmYxMGEyMGJkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMmExMjgzOTRhNjI2YmI5MGUyYjdjYmRkN2M0ZWJkNzE4OTU2YjJiIiwic25hbWUiOiJhc2hpc2giLCJfc2Vzc2lvbl9leHBpcnkiOjB9', '2019-04-25 12:37:16.195694');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `compile_coder`
--
ALTER TABLE `compile_coder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compile_coder`
--
ALTER TABLE `compile_coder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
