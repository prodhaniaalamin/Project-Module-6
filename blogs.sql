-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 06:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `created_at`, `updated_at`) VALUES
(2, 'Dr. Sarah Thompson', '2025-01-10 16:29:14', '2025-01-10 16:29:14'),
(3, 'Dr. James Anderson', '2025-01-10 16:29:14', '2025-01-10 16:29:14'),
(4, 'Dr. Emily Carter', '2025-01-10 16:29:14', '2025-01-10 16:29:14'),
(5, 'Dr. Michael Harris', '2025-01-10 16:29:14', '2025-01-10 16:29:14'),
(6, 'Dr. Olivia Patel', '2025-01-10 16:29:14', '2025-01-10 16:29:14'),
(7, 'Dr. William Brown', '2025-01-10 16:29:14', '2025-01-10 16:29:14'),
(8, 'Dr. Sophia Kim', '2025-01-10 16:29:14', '2025-01-10 16:29:14'),
(9, 'Dr. Daniel Lee', '2025-01-10 16:29:14', '2025-01-10 16:29:14'),
(10, 'Dr. Anna Martinez', '2025-01-10 16:29:14', '2025-01-10 16:29:14'),
(11, 'Dr. Christopher Johnson', '2025-01-10 16:29:14', '2025-01-10 16:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `category_id`, `author_id`, `created_at`, `updated_at`) VALUES
(56, 'Understanding Heart Disease: Symptoms and Prevention', 'Heart disease is a leading cause of death worldwide. This blog discusses the symptoms, risk factors, and preventive measures to take...', 11, 11, '2025-01-10 16:40:52', '2025-01-10 16:40:52'),
(57, 'The Importance of Mental Health in Today’s World', 'Mental health is often overlooked, yet it is essential to our overall well-being. Learn about common mental health conditions and how to care for your mind...', 2, 2, '2025-01-10 16:40:52', '2025-01-10 16:40:52'),
(58, 'Childhood Vaccines: Myths vs Facts', 'Vaccination is crucial for children’s health, but many myths surround it. In this blog, we debunk some common misconceptions about childhood vaccines...', 3, 3, '2025-01-10 16:40:52', '2025-01-10 16:40:52'),
(59, 'The Future of Ophthalmology: Trends and Technologies', 'Ophthalmology has seen remarkable advancements in recent years. This blog explores the cutting-edge technologies transforming eye care...', 4, 4, '2025-01-10 16:40:52', '2025-01-10 16:40:52'),
(60, 'Pregnancy Nutrition: What You Need to Know', 'During pregnancy, nutrition plays a vital role in the health of both mother and baby. Learn what to eat and avoid during this important time...', 5, 5, '2025-01-10 16:40:52', '2025-01-10 16:40:52'),
(61, 'The Role of Dermatologists in Skincare', 'Dermatologists specialize in the diagnosis and treatment of skin conditions. This blog provides an overview of their role in maintaining skin health...', 6, 6, '2025-01-10 16:40:52', '2025-01-10 16:40:52'),
(62, 'Treating Arthritis: New Approaches and Treatments', 'Arthritis is a common condition, but new treatments and approaches are making a difference in managing it. Learn about the latest advancements in arthritis care...', 7, 7, '2025-01-10 16:40:52', '2025-01-10 16:40:52'),
(63, 'The Rise of Cancer Treatment: What’s New?', 'Cancer treatment has made great strides, with new therapies offering hope for patients. In this blog, we discuss the most promising treatment options...', 8, 8, '2025-01-10 16:40:52', '2025-01-10 16:40:52'),
(64, 'Managing Stress in a Busy World', 'Stress can have a significant impact on health. In this blog, we explore stress management techniques to help you maintain your well-being...', 9, 9, '2025-01-10 16:40:52', '2025-01-10 16:40:52'),
(65, 'The Evolution of General Medicine: From Past to Present', 'General medicine has evolved tremendously over the years. This blog examines the progress made and the future of general medical practice...', 10, 10, '2025-01-10 16:40:52', '2025-01-10 16:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(2, 'Cardiology', '2025-01-10 16:29:16', '2025-01-10 16:29:16'),
(3, 'Neurology', '2025-01-10 16:29:16', '2025-01-10 16:29:16'),
(4, 'Pediatrics', '2025-01-10 16:29:16', '2025-01-10 16:29:16'),
(5, 'Ophthalmology', '2025-01-10 16:29:16', '2025-01-10 16:29:16'),
(6, 'Gynecology', '2025-01-10 16:29:16', '2025-01-10 16:29:16'),
(7, 'Dermatology', '2025-01-10 16:29:16', '2025-01-10 16:29:16'),
(8, 'Orthopedics', '2025-01-10 16:29:16', '2025-01-10 16:29:16'),
(9, 'Oncology', '2025-01-10 16:29:16', '2025-01-10 16:29:16'),
(10, 'Psychiatry', '2025-01-10 16:29:16', '2025-01-10 16:29:16'),
(11, 'General Medicine', '2025-01-10 16:29:16', '2025-01-10 16:42:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
