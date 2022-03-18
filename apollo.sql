-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 01:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apollo`
--

-- --------------------------------------------------------

--
-- Table structure for table `apolloapp_admin`
--

CREATE TABLE `apolloapp_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apolloapp_admin`
--

INSERT INTO `apolloapp_admin` (`id`, `email`, `password`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'admin@gmail.com', '123456789', 1, '2022-03-18 15:58:51.000000', '2022-03-18 15:58:51.000000');

-- --------------------------------------------------------

--
-- Table structure for table `apolloapp_tickets`
--

CREATE TABLE `apolloapp_tickets` (
  `id` int(11) NOT NULL,
  `ticketid` varchar(200) NOT NULL,
  `compliant` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updatedAt` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apolloapp_tickets`
--

INSERT INTO `apolloapp_tickets` (`id`, `ticketid`, `compliant`, `status`, `createdAt`, `updatedAt`, `user_id`) VALUES
(1, 'T2397443937', 'my amount is not refund', 0, '2022-03-18 07:46:44.966073', '2022-03-18 07:46:44.966073', 1),
(3, 'T2587222799', 'not delivered', 1, '2022-03-18 08:58:38.910222', '2022-03-18 11:23:01.520884', 1),
(4, 'T1713642075', 'testing', 1, '2022-03-18 09:47:18.029291', '2022-03-18 11:23:38.777523', 1),
(5, 'T135351260', 'item is not good', 1, '2022-03-18 10:34:46.678315', '2022-03-18 11:24:04.653700', 1),
(6, 'T2813578273', 'change color', 1, '2022-03-18 10:39:14.500017', '2022-03-18 11:24:27.355633', 1),
(7, 'T2123891648', 'return my money', 0, '2022-03-18 10:52:24.523816', '2022-03-18 10:52:24.523816', 3),
(8, 'T2533322394', 'item is good', 1, '2022-03-18 11:28:52.951539', '2022-03-18 11:29:00.161424', 3),
(9, 'T1917367293', 'change my shirt size', 1, '2022-03-18 11:42:10.349487', '2022-03-18 11:42:21.769283', 4),
(10, 'T2315633534', 'bad packing', 0, '2022-03-18 11:42:50.178107', '2022-03-18 11:42:50.178107', 4);

-- --------------------------------------------------------

--
-- Table structure for table `apolloapp_user`
--

CREATE TABLE `apolloapp_user` (
  `id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updatedAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apolloapp_user`
--

INSERT INTO `apolloapp_user` (`id`, `name`, `email`, `mobile`, `password`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'dilip', 'dilip@yopmail.com', 'password', 'password', 0, '2022-03-18 07:43:04.028001', '2022-03-18 07:43:04.028001'),
(2, 'kumar', 'kumar@yopmail.com', '9876543216', 'password', 0, '2022-03-18 10:51:04.221687', '2022-03-18 10:51:04.221687'),
(3, 'kumarr', 'kumar@gmail.com', '9876549879', 'password', 0, '2022-03-18 10:51:45.604558', '2022-03-18 10:51:45.604558'),
(4, 'teja', 'teja@yopmail.com', '9876546548', '123456789', 0, '2022-03-18 11:41:12.810179', '2022-03-18 11:41:12.811177');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add admin', 7, 'add_admin'),
(26, 'Can change admin', 7, 'change_admin'),
(27, 'Can delete admin', 7, 'delete_admin'),
(28, 'Can view admin', 7, 'view_admin'),
(29, 'Can add tickets', 8, 'add_tickets'),
(30, 'Can change tickets', 8, 'change_tickets'),
(31, 'Can delete tickets', 8, 'delete_tickets'),
(32, 'Can view tickets', 8, 'view_tickets'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'apolloapp', 'admin'),
(8, 'apolloapp', 'tickets'),
(9, 'apolloapp', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-18 07:41:57.522442'),
(2, 'auth', '0001_initial', '2022-03-18 07:42:05.242574'),
(3, 'admin', '0001_initial', '2022-03-18 07:42:06.786030'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-18 07:42:06.835749'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-18 07:42:06.890769'),
(6, 'apolloapp', '0001_initial', '2022-03-18 07:42:07.941845'),
(7, 'apolloapp', '0002_auto_20220318_1304', '2022-03-18 07:42:09.053180'),
(8, 'contenttypes', '0002_remove_content_type_name', '2022-03-18 07:42:10.079834'),
(9, 'auth', '0002_alter_permission_name_max_length', '2022-03-18 07:42:11.187509'),
(10, 'auth', '0003_alter_user_email_max_length', '2022-03-18 07:42:11.300865'),
(11, 'auth', '0004_alter_user_username_opts', '2022-03-18 07:42:11.350822'),
(12, 'auth', '0005_alter_user_last_login_null', '2022-03-18 07:42:11.757615'),
(13, 'auth', '0006_require_contenttypes_0002', '2022-03-18 07:42:11.788251'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2022-03-18 07:42:11.827187'),
(15, 'auth', '0008_alter_user_username_max_length', '2022-03-18 07:42:11.913014'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2022-03-18 07:42:12.001554'),
(17, 'auth', '0010_alter_group_name_max_length', '2022-03-18 07:42:12.112911'),
(18, 'auth', '0011_update_proxy_permissions', '2022-03-18 07:42:12.160636'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2022-03-18 07:42:12.256906'),
(20, 'sessions', '0001_initial', '2022-03-18 07:42:12.779406');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('tgs89oohic6k2gq7sv52da56hlvcqh7u', 'e30:1nVAxP:CNa4_TC8nJjdyAVtbYbguLnUIV_1kvpkiIp8uoPR6Jo', '2022-04-01 11:39:47.034850'),
('tw8s20iwtista52ulez1f60m7zssxp5d', '.eJyrViotTi2Kz0xRsjLRgbBTcxMzc5SslEpSsxIdKvMLQFy95PxcJah8UX5OKlAaxFaqBQDXohZz:1nVB0M:xHFcaYewOzLDXA70euKDwfSXDYZ0nhGdW-S8TXuePRk', '2022-04-01 11:42:50.373584');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apolloapp_admin`
--
ALTER TABLE `apolloapp_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apolloapp_tickets`
--
ALTER TABLE `apolloapp_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apolloapp_tickets_user_id_7b083d68_fk_apolloapp_user_id` (`user_id`);

--
-- Indexes for table `apolloapp_user`
--
ALTER TABLE `apolloapp_user`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `apolloapp_admin`
--
ALTER TABLE `apolloapp_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apolloapp_tickets`
--
ALTER TABLE `apolloapp_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `apolloapp_user`
--
ALTER TABLE `apolloapp_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apolloapp_tickets`
--
ALTER TABLE `apolloapp_tickets`
  ADD CONSTRAINT `apolloapp_tickets_user_id_7b083d68_fk_apolloapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `apolloapp_user` (`id`);

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
