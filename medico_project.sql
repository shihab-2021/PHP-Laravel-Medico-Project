-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 05:10 AM
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
-- Database: `medico_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_06_20_012119_create_services_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_service1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_service2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_service3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_service4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `sub_service1`, `sub_service2`, `sub_service3`, `sub_service4`, `image_url`, `detail1`, `detail2`, `created_at`, `updated_at`) VALUES
(5, 'Medical Services', 'Pediatrics', 'Cardiology', 'Neurosurgery', 'Cancer Care', 'https://st4.depositphotos.com/1907633/20440/i/600/depositphotos_204408788-stock-photo-health-care-medical-services-concept.jpg', 'Medical services are the sheet anchor of most general hospitals. They are so closely related to all other departments that sharp lines cannot be drawn to delineate specific responsibilities.', 'Policies and procedures should not only be available in writing but updated periodically. Consultations should be readily available and the organizational relationships with related specialties should be clearly understood.', '2022-06-20 04:38:45', '2022-06-20 04:38:45'),
(6, 'Surgical Services', 'General Surgery', 'Gynecological Surgery', 'Head and Neck Surgery', 'Robotic Surgery', 'https://res.cloudinary.com/lowellgeneral/image/upload/c_fill,w_400,g_faces,q_auto,dpr_3.0,f_auto/surgical-services1_1EFA8C80-FC15-11E9-92C400218628D024.jpg', 'Surgical services are the most spectacularly visible function of the hospital. In a general hospital, all branches of the surgical services diagnostic, therapeutic, and operation theatres are combined as one department.', 'Again, the policies and procedures should be available in writing. A “credentials committee” the equivalent of the medical audit committee of medical services, must have clear criteria regarding surgical procedures to guide it.', '2022-06-20 04:40:23', '2022-06-20 04:40:23'),
(7, 'Obstetrical Services', 'Pregnancy Tests', 'Vaginal Delivery', 'Cesarean Delivery (C-Section)', 'Biophysical Profiles', 'https://anesthesialifesupportservices.com/wp-content/uploads/2019/12/pregnant.jpg', 'Obstetrical services are also organized like other departments with policies and procedures peculiar to its requirement. Qualified staff should be available even off-time with availability of consultants for complicated cases.', 'Deliveries conducted and births and deaths must be properly documented and records maintained. There should be a system to investigate all maternal and infant deaths.', '2022-06-20 04:45:11', '2022-06-20 04:45:11'),
(8, 'Anesthesiology Services', 'Cardiothoracic Anesthesia', 'Transplant Anesthesia', 'Pediatric Anesthesia', 'Obstetric Anesthesia', 'https://www.sparrow.org/sites/default/files/styles/scale_to_max_width_1920/public/2020-11/1.1.2_5p2a8414_anesthesiology.jpg?itok=GMZ-8Vhl', 'Anesthesiology service is the least visible service in a hospital, but as important as others. Apart from the high professional knowledge and skill of the anesthesiologists, the service should conform to all the standing policies and procedures.', 'Safely in operation theatres is normally assigned to anesthesiology service. Standing orders on safety regulations must be available and enforced. Deaths indirectly attributable to anesthesia should not exceed one death in 5000 anesthesias.', '2022-06-20 04:48:48', '2022-06-20 04:48:48'),
(9, 'Laboratory Services', 'Clinical and environmental testing', 'Evaluation of new laboratory technologies and methodologies', 'Clinical consultation', 'Technical and customer service support', 'https://rightmedicalcentre.com/wp-content/uploads/2016/08/rmc-services-laboratory-services.jpg', 'Services appropriate to the need of the hospital should be available, conducted and supervised by competent technicians and pathologists respectively, with appropriate system of maintenance of records of tests and standing orders and procedures. The calibration of equipment should be carried out regularly.', 'Evaluation of procedures pertaining to sterile supplies, infection control and functioning of the “infection control committee” to monitor the above.', '2022-06-20 05:31:32', '2022-06-20 05:31:32'),
(10, 'Paediatric Services', 'Physiotherapy', 'Audiology', 'Speech and language therapy', 'Child and family psychology', 'https://v9h5r3a5.stackpathcdn.com/wp-content/uploads/2015/05/services-sidebar.jpg', 'Except in large hospitals, this service will generally be a part of medical service. However, in whatever way it is organised, the basic requirement is that it is geared for special attention to the peculiar needs of children and infants.', 'The physical facilities, policies and procedures should have been geared to these needs.', '2022-06-20 05:34:03', '2022-06-20 05:34:03'),
(11, 'Radiology Services', 'Computed Tomography (CT or CAT Scan)', 'Diagnostic Radiology (X-ray)', 'Magnetic Resonance Imaging (MRI)', 'Nuclear Medicine', 'https://wp02-media.cdn.ihealthspot.com/wp-content/uploads/sites/520/2020/03/19155512/iStock-1094357906.jpg', 'Facilities, including the number of radiographic machines must be adequate to meet the requirement of the diagnostic and therapeutic procedures, with competent medical and technical paramedical staff.', 'Policies and standing orders pertaining to radiation safety factors including accidental exposure hazards to personnel must be firmly adhered to. A fool-proof system of records of all radiological investigations should be in operation.', '2022-06-20 05:36:29', '2022-06-20 05:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Mishon', 'mishon@gmail.com', '$2y$10$4R1Rbs06HHIzaFCR7hYVIOkje57q2U./PS.JGSLnGCz.BG0VSSEQq', '2022-06-20 01:06:20', '2022-06-20 01:06:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
