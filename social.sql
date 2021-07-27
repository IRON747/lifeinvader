-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2021 at 03:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` mediumtext NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Yes! yes it is.', 'sachin_tendulkar', 'virat_kohli', '2021-04-17 17:02:13', 'no', 3),
(2, 'Surfin Bird', 'virat_kohli', 'sachin_tendulkar', '2021-04-17 17:19:45', 'no', 11);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(5, 'rahul_dravid', 'sachin_tendulkar');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'sachin_tendulkar', 4),
(2, 'sachin_tendulkar', 1),
(3, 'sachin_tendulkar', 3),
(4, 'sachin_tendulkar', 2),
(5, 'sachin_tendulkar', 5),
(6, 'virat_kohli', 4),
(10, 'virat_kohli', 12),
(11, 'virat_kohli', 8),
(12, 'virat_kohli', 5),
(13, 'virat_kohli', 3);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'rahul_dravid', 'sachin_tendulkar', 'Sup\r\n', '2021-04-11 10:52:18', 'yes', 'yes', 'no'),
(2, 'rahul_dravid', 'sachin_tendulkar', 'Sup\r\n', '2021-04-11 10:53:20', 'yes', 'yes', 'no'),
(3, 'rahul_dravid', 'sachin_tendulkar', 'HOPON', '2021-04-11 10:57:45', 'yes', 'yes', 'no'),
(4, 'rahul_dravid', 'sachin_tendulkar', 'HOPON', '2021-04-11 10:57:52', 'yes', 'yes', 'no'),
(5, 'rahul_dravid', 'sachin_tendulkar', 'HOPON', '2021-04-11 10:57:59', 'yes', 'yes', 'no'),
(6, 'virat_kohli', 'virat_kohli', 'Active', '2021-04-11 11:06:39', 'yes', 'yes', 'no'),
(7, 'virat_kohli', 'virat_kohli', 'Active', '2021-04-11 11:06:47', 'yes', 'yes', 'no'),
(8, 'sachin_tendulkar', 'virat_kohli', 'Active', '2021-04-11 11:07:07', 'yes', 'yes', 'no'),
(9, 'sachin_tendulkar', 'virat_kohli', 'Active', '2021-04-11 11:07:14', 'yes', 'yes', 'no'),
(10, 'sachin_tendulkar', 'virat_kohli', 'Active', '2021-04-11 11:07:17', 'yes', 'yes', 'no'),
(11, 'virat_kohli', 'virat_kohli', 'Active 3', '2021-04-11 11:16:18', 'yes', 'yes', 'no'),
(12, 'virat_kohli', 'virat_kohli', 'Active 3', '2021-04-11 11:16:23', 'yes', 'yes', 'no'),
(13, 'sachin_tendulkar', 'sachin_tendulkar', 'Sup', '2021-04-11 11:18:38', 'yes', 'yes', 'no'),
(14, 'sachin_tendulkar', 'sachin_tendulkar', 'Sup', '2021-04-11 11:18:42', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` mediumtext NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'rahul_dravid', 'sachin_tendulkar', 'Sachin Tendulkar liked your post', 'post.php?id=0', '2021-04-11 10:53:20', 'yes', 'yes'),
(2, 'rahul_dravid', 'sachin_tendulkar', 'Sachin Tendulkar liked your post', 'post.php?id=0', '2021-04-11 10:53:35', 'yes', 'yes'),
(3, 'rahul_dravid', 'sachin_tendulkar', 'Sachin Tendulkar liked your post', 'post.php?id=0', '2021-04-11 10:57:52', 'yes', 'yes'),
(4, 'rahul_dravid', 'sachin_tendulkar', 'Sachin Tendulkar liked your post', 'post.php?id=0', '2021-04-11 10:57:59', 'yes', 'yes'),
(5, 'sachin_tendulkar', 'virat_kohli', 'Virat Kohli liked your post', 'post.php?id=0', '2021-04-11 11:07:14', 'yes', 'yes'),
(6, 'rahul_dravid', 'sachin_tendulkar', 'Sachin Tendulkar posted on your profile', 'post.php?id=2', '2021-04-11 11:12:08', 'no', 'yes'),
(7, 'virat_kohli', 'sachin_tendulkar', 'Sachin Tendulkar liked your post', 'post.php?id=3', '2021-04-11 12:28:59', 'yes', 'yes'),
(8, 'rahul_dravid', 'sachin_tendulkar', 'Sachin Tendulkar liked your post', 'post.php?id=5', '2021-04-11 12:29:06', 'no', 'no'),
(9, 'sachin_tendulkar', 'virat_kohli', 'Virat Kohli liked your post', 'post.php?id=4', '2021-04-11 15:31:45', 'yes', 'yes'),
(10, 'sachin_tendulkar', 'virat_kohli', 'Virat Kohli liked your post', 'post.php?id=2', '2021-04-11 15:31:49', 'yes', 'yes'),
(11, 'sachin_tendulkar', 'virat_kohli', 'Virat Kohli liked your post', 'post.php?id=1', '2021-04-11 15:31:50', 'yes', 'yes'),
(12, 'virat_kohli', 'sachin_tendulkar', 'Sachin Tendulkar commented on your post', 'post.php?id=3', '2021-04-17 17:02:13', 'yes', 'yes'),
(13, 'sachin_tendulkar', 'virat_kohli', 'Virat Kohli commented on your post', 'post.php?id=11', '2021-04-17 17:19:45', 'yes', 'yes'),
(14, 'sachin_tendulkar', 'virat_kohli', 'Virat Kohli liked your post', 'post.php?id=8', '2021-04-17 17:20:23', 'yes', 'yes'),
(15, 'rahul_dravid', 'virat_kohli', 'Virat Kohli liked your post', 'post.php?id=5', '2021-04-17 17:22:11', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` mediumtext NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'HEY', 'sachin_tendulkar', 'none', '2021-04-11 11:11:21', 'no', 'no', 1, ''),
(2, 'Hey', 'sachin_tendulkar', 'rahul_dravid', '2021-04-11 11:12:08', 'no', 'no', 1, ''),
(3, 'common\n', 'virat_kohli', 'none', '2021-04-11 11:17:58', 'no', 'no', 2, ''),
(4, 'Sup', 'sachin_tendulkar', 'none', '2021-04-11 11:18:42', 'no', 'no', 2, ''),
(5, 'Rahul here', 'rahul_dravid', 'none', '2021-04-11 11:21:46', 'no', 'no', 2, 'assets/images/posts/60728e72c3057Rahul-Dravid-1-2.jpg'),
(6, '<br><iframe width=\'420\' height=\'315\' src=\'\'></ifram><br>', 'sachin_tendulkar', 'none', '2021-04-15 19:52:10', 'no', 'yes', 0, ''),
(7, '<br><iframe width=\'420\' height=\'315\' src=\'\'></ifram><br>', 'sachin_tendulkar', 'none', '2021-04-15 19:52:49', 'no', 'yes', 0, ''),
(8, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/RMmLTmjXKH8\'></iframe><br>', 'sachin_tendulkar', 'none', '2021-04-15 19:56:05', 'no', 'no', 1, ''),
(9, 'Hey Guys check this <br><iframe width=\'420\' height=\'315\' src=\'out\nhttps://www.youtube.com/embed/RMmLTmjXKH8\'></iframe><br>', 'sachin_tendulkar', 'none', '2021-04-15 19:56:39', 'no', 'yes', 0, 'assets/images/posts/60784d1fd5562shaun2.jpg'),
(10, 'Who is exited for IPL!', 'sachin_tendulkar', 'none', '2021-04-15 20:26:39', 'no', 'no', 0, ''),
(11, 'Bird is the Word!', 'sachin_tendulkar', 'none', '2021-04-17 17:19:14', 'no', 'no', 0, ''),
(12, 'YES The Bird is the Word', 'virat_kohli', 'none', '2021-04-17 17:19:59', 'no', 'no', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Exited', 1),
('IPL', 1),
('Bird', 2),
('Word', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Sachin', 'Tendulkar', 'sachin_tendulkar', 'st@gmail.com', 'e3afd8ad12667b18793aa2be02f841db', '2021-04-11', 'assets/images/profile_pics/sachin_tendulkar8870246e58684f2b0d5306cc1e52f648n.jpeg', 15, 5, 'no', ',virat_kohli,'),
(2, 'Rahul', 'Dravid', 'rahul_dravid', 'rd@gmail.com', '439ed537979d8e831561964dbbbd7413', '2021-04-11', 'assets/images/profile_pics/rahul_dravid0bb3e3e6261eeb213779e52345e21776n.jpeg', 1, 2, 'no', ',virat_kohli,'),
(3, 'Virat', 'Kohli', 'virat_kohli', 'vk@gmail.com', '5a39fe36ce9aa092ffe8faa0eaedd5da', '2021-04-11', 'assets/images/profile_pics/virat_kohli0c6e6e63b4fefee73f7d9933a997ebdcn.jpeg', 9, 3, 'no', ',sachin_tendulkar,rahul_dravid,'),
(4, 'Peter', 'Griffin', 'peter_griffin', 'pg@gmail.com', '51dc30ddc473d43a6011e9ebba6ca770', '2021-04-11', 'assets/images/profile_pics/defaults/black.jpg', 0, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
