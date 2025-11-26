-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2025 at 05:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Technology', 'Latest technology news and updates', '2025-11-07 05:52:12'),
(2, 'Travel', 'Travel guides and destination reviews', '2025-11-07 05:52:12'),
(3, 'Food', 'Recipes, restaurant reviews, and cooking tips', '2025-11-07 05:52:12'),
(4, 'Lifestyle', 'Health, fitness, and daily life tips', '2025-11-07 05:52:12'),
(5, 'Education', 'Learning resources and educational content', '2025-11-07 05:52:12'),
(6, 'Sports', 'Sports news, updates, and analysis', '2025-11-07 05:52:12'),
(7, 'Technology', 'Latest technology news and updates', '2025-11-07 05:52:17'),
(8, 'Travel', 'Travel guides and destination reviews', '2025-11-07 05:52:17'),
(9, 'Food', 'Recipes, restaurant reviews, and cooking tips', '2025-11-07 05:52:17'),
(10, 'Lifestyle', 'Health, fitness, and daily life tips', '2025-11-07 05:52:17'),
(11, 'Education', 'Learning resources and educational content.', '2025-11-07 05:52:17'),
(30, 'aaa aaa', 'aaa', '2025-11-07 07:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `category_id`, `created_at`) VALUES
(1, '10 Best Programming Languages to Learn in 2024', 'Learning to code is one of the most valuable skills you can acquire in today\'s digital world. Whether you\'re looking to start a career in software development or just want to understand how technology works, choosing the right programming language is crucial. In this article, we\'ll explore the top 10 programming languages that are in high demand and offer great career opportunities. From Python to JavaScript, we\'ll cover what makes each language special and why you should consider learning it.', '0', 1, '2025-11-07 05:52:12'),
(2, 'Top 5 Destinations for Budget Travelers', 'Traveling doesn\'t have to break the bank! There are many amazing destinations around the world that offer incredible experiences without costing a fortune. In this guide, we\'ll take you through five budget-friendly destinations that should be on every traveler\'s bucket list. From Southeast Asia to Eastern Europe, these places offer rich culture, delicious food, and unforgettable memories at a fraction of the cost of more popular tourist destinations.', '0', 2, '2025-11-07 05:52:12'),
(3, 'Easy Homemade Pizza Recipe', 'Making pizza at home is easier than you think! This simple recipe will help you create a delicious, restaurant-quality pizza in your own kitchen. You\'ll need basic ingredients like flour, yeast, tomatoes, and cheese. The secret to a great pizza is in the dough - take your time to let it rise properly. Once you master this recipe, you\'ll never want to order takeout again!', '0', 3, '2025-11-07 05:52:12'),
(4, '5 Morning Habits of Successful People', 'How you start your day sets the tone for everything that follows. Successful people understand this and have developed morning routines that help them stay focused, energized, and productive. In this article, we\'ll explore five morning habits that can transform your life. From waking up early to practicing gratitude, these simple habits can make a huge difference in your daily productivity and overall well-being.', '0', 4, '2025-11-07 05:52:12'),
(5, 'How to Learn a New Language Fast', 'Learning a new language can seem daunting, but with the right approach, you can make significant progress in just a few months. This guide covers proven techniques and strategies that language learners use to accelerate their progress. We\'ll discuss immersion techniques, language apps, conversation practice, and more. Whether you\'re learning for travel, work, or personal growth, these tips will help you on your language learning journey.', '0', 5, '2025-11-07 05:52:12'),
(6, 'The Future of Artificial Intelligence', 'Artificial Intelligence is transforming the world around us at an unprecedented pace. From self-driving cars to virtual assistants, AI technology is becoming an integral part of our daily lives. In this article, we explore the current state of AI, its potential applications, and what the future might hold. We\'ll also discuss the ethical considerations and challenges that come with this rapidly advancing technology.', '0', 1, '2025-11-07 05:52:12'),
(7, 'Best Beaches in Southeast Asia', 'Southeast Asia is home to some of the world\'s most beautiful beaches. With crystal-clear waters, white sandy shores, and stunning sunsets, these destinations are paradise for beach lovers. In this travel guide, we\'ll take you through the top beaches in Thailand, Philippines, Indonesia, and more. Each beach offers something unique, from vibrant nightlife to peaceful seclusion.', '0', 2, '2025-11-07 05:52:12'),
(8, 'Healthy Breakfast Ideas for Busy Mornings', 'Starting your day with a nutritious breakfast is essential for maintaining energy and focus throughout the day. But when you\'re busy, it can be tempting to skip breakfast or grab something unhealthy. This article provides quick and easy breakfast ideas that are both nutritious and delicious. From smoothie bowls to overnight oats, these recipes take just minutes to prepare but will keep you satisfied until lunch.', '0', 3, '2025-11-07 05:52:12'),
(9, 'Building a Sustainable Fitness Routine', 'Creating a fitness routine that you can stick to long-term is key to achieving your health goals. Many people start with enthusiasm but lose motivation after a few weeks. In this guide, we\'ll show you how to build a sustainable fitness routine that fits your lifestyle. We\'ll cover goal setting, finding activities you enjoy, scheduling workouts, and staying motivated when things get tough.', '0', 4, '2025-11-07 05:52:12'),
(10, 'Online Learning Platforms Compared', 'With so many online learning platforms available, choosing the right one can be overwhelming. Whether you want to learn coding, design, business, or any other skill, there\'s a platform for you. This comprehensive comparison looks at popular platforms like Coursera, Udemy, Khan Academy, and more. We\'ll help you understand the differences, pricing, and which platform might be best for your learning style and goals.', '0', 5, '2025-11-07 05:52:12'),
(11, 'Champions League Final Preview', 'The biggest match in European club football is just around the corner. Two of the continent\'s best teams will face off in what promises to be an exciting final. In this preview, we analyze both teams\' strengths and weaknesses, key players to watch, and make predictions about how the match might unfold. Whether you\'re a die-hard fan or casual observer, this guide will get you ready for the big game.', '0', 6, '2025-11-07 05:52:12'),
(12, 'Understanding Cloud Computing Basics', 'Cloud computing has revolutionized how businesses and individuals store data and run applications. But what exactly is the cloud? In this beginner-friendly guide, we\'ll explain cloud computing in simple terms. We\'ll cover the different types of cloud services, major providers, benefits, and common use cases. By the end of this article, you\'ll have a solid understanding of this important technology.', '0', 1, '2025-11-07 05:52:12'),
(13, '10 Best Programming Languages to Learn in 2024', 'Learning to code is one of the most valuable skills you can acquire in today\'s digital world. Whether you\'re looking to start a career in software development or just want to understand how technology works, choosing the right programming language is crucial. In this article, we\'ll explore the top 10 programming languages that are in high demand and offer great career opportunities. From Python to JavaScript, we\'ll cover what makes each language special and why you should consider learning it.', '0', 1, '2025-11-07 05:52:18'),
(14, 'Top 5 Destinations for Budget Travelers', 'Traveling doesn\'t have to break the bank! There are many amazing destinations around the world that offer incredible experiences without costing a fortune. In this guide, we\'ll take you through five budget-friendly destinations that should be on every traveler\'s bucket list. From Southeast Asia to Eastern Europe, these places offer rich culture, delicious food, and unforgettable memories at a fraction of the cost of more popular tourist destinations.', '0', 2, '2025-11-07 05:52:18'),
(15, 'Easy Homemade Pizza Recipe', 'Making pizza at home is easier than you think! This simple recipe will help you create a delicious, restaurant-quality pizza in your own kitchen. You\'ll need basic ingredients like flour, yeast, tomatoes, and cheese. The secret to a great pizza is in the dough - take your time to let it rise properly. Once you master this recipe, you\'ll never want to order takeout again!', '0', 3, '2025-11-07 05:52:18'),
(16, '5 Morning Habits of Successful People', 'How you start your day sets the tone for everything that follows. Successful people understand this and have developed morning routines that help them stay focused, energized, and productive. In this article, we\'ll explore five morning habits that can transform your life. From waking up early to practicing gratitude, these simple habits can make a huge difference in your daily productivity and overall well-being.', '0', 4, '2025-11-07 05:52:18'),
(17, 'How to Learn a New Language Fast', 'Learning a new language can seem daunting, but with the right approach, you can make significant progress in just a few months. This guide covers proven techniques and strategies that language learners use to accelerate their progress. We\'ll discuss immersion techniques, language apps, conversation practice, and more. Whether you\'re learning for travel, work, or personal growth, these tips will help you on your language learning journey.', '0', 5, '2025-11-07 05:52:18'),
(18, 'The Future of Artificial Intelligence', 'Artificial Intelligence is transforming the world around us at an unprecedented pace. From self-driving cars to virtual assistants, AI technology is becoming an integral part of our daily lives. In this article, we explore the current state of AI, its potential applications, and what the future might hold. We\'ll also discuss the ethical considerations and challenges that come with this rapidly advancing technology.', '0', 1, '2025-11-07 05:52:18'),
(19, 'Best Beaches in Southeast Asia', 'Southeast Asia is home to some of the world\'s most beautiful beaches. With crystal-clear waters, white sandy shores, and stunning sunsets, these destinations are paradise for beach lovers. In this travel guide, we\'ll take you through the top beaches in Thailand, Philippines, Indonesia, and more. Each beach offers something unique, from vibrant nightlife to peaceful seclusion.', '0', 2, '2025-11-07 05:52:18'),
(20, 'Healthy Breakfast Ideas for Busy Mornings', 'Starting your day with a nutritious breakfast is essential for maintaining energy and focus throughout the day. But when you\'re busy, it can be tempting to skip breakfast or grab something unhealthy. This article provides quick and easy breakfast ideas that are both nutritious and delicious. From smoothie bowls to overnight oats, these recipes take just minutes to prepare but will keep you satisfied until lunch.', '0', 3, '2025-11-07 05:52:18'),
(21, 'Building a Sustainable Fitness Routine', 'Creating a fitness routine that you can stick to long-term is key to achieving your health goals. Many people start with enthusiasm but lose motivation after a few weeks. In this guide, we\'ll show you how to build a sustainable fitness routine that fits your lifestyle. We\'ll cover goal setting, finding activities you enjoy, scheduling workouts, and staying motivated when things get tough.', '0', 4, '2025-11-07 05:52:18'),
(22, 'Online Learning Platforms Compared', 'With so many online learning platforms available, choosing the right one can be overwhelming. Whether you want to learn coding, design, business, or any other skill, there\'s a platform for you. This comprehensive comparison looks at popular platforms like Coursera, Udemy, Khan Academy, and more. We\'ll help you understand the differences, pricing, and which platform might be best for your learning style and goals.', '0', 5, '2025-11-07 05:52:18'),
(23, 'Champions League Final Preview', 'The biggest match in European club football is just around the corner. Two of the continent\'s best teams will face off in what promises to be an exciting final. In this preview, we analyze both teams\' strengths and weaknesses, key players to watch, and make predictions about how the match might unfold. Whether you\'re a die-hard fan or casual observer, this guide will get you ready for the big game.', '0', 6, '2025-11-07 05:52:18'),
(24, 'Understanding Cloud Computing Basics', 'Cloud computing has revolutionized how businesses and individuals store data and run applications. But what exactly is the cloud? In this beginner-friendly guide, we\'ll explain cloud computing in simple terms. We\'ll cover the different types of cloud services, major providers, benefits, and common use cases. By the end of this article, you\'ll have a solid understanding of this important technology.', '0', 1, '2025-11-07 05:52:18'),
(26, 'Item Five', 'Text here ......', '0', 4, '2025-11-07 07:43:53'),
(27, 'Item Five', 'Text here ......', '0', 4, '2025-11-07 07:44:56'),
(28, 'Hello World', 'aaaaaa', '0', 10, '2025-11-07 07:47:57'),
(29, 'Hello World', 'aaaaaa', '0', 10, '2025-11-07 07:48:49'),
(30, 'Hello World', 'aaaaaa', '0', 10, '2025-11-07 07:50:07'),
(31, 'Addd', 'aasdgfsd', '0', 11, '2025-11-08 05:36:42'),
(32, 'Addgdg', 'aaad', 'cat.jpg', 11, '2025-11-08 05:38:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
