-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2022 at 01:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystemtut`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogcategory`
--

CREATE TABLE `blogcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogcategory`
--

INSERT INTO `blogcategory` (`id`, `name`) VALUES
(1, 'Web Development'),
(2, 'C'),
(3, 'FullStack'),
(4, 'Android'),
(5, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `blogcomments`
--

CREATE TABLE `blogcomments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogcomments`
--

INSERT INTO `blogcomments` (`id`, `comment`, `name`, `post_id`, `created_at`) VALUES
(1, 'this is nice content', 'ajay', 2, '2022-05-13 14:58:31'),
(2, 'very helpfull', 'nick', 2, '2022-05-13 14:58:31'),
(3, 'test comment', 'raju', 1, '2022-05-13 19:00:10'),
(4, 'awasome', 'ram', 1, '2022-05-13 19:02:08'),
(5, 'deva re deva uthale re...', 'babu row', 1, '2022-05-13 19:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `image`) VALUES
(1, 2, '1.jpg'),
(2, 1, '2.jpg'),
(3, 2, '3.jpg\n');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `blogcategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `created_at`, `blogcategory_id`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-05-08 07:22:27', 1),
(2, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32', '2022-05-08 07:22:27', 2);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(11) NOT NULL,
  `problem` text NOT NULL,
  `language` int(11) NOT NULL,
  `topic` text NOT NULL,
  `description` text NOT NULL,
  `solution` text NOT NULL,
  `explanation` text NOT NULL,
  `output` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `problem`, `language`, `topic`, `description`, `solution`, `explanation`, `output`) VALUES
(1, 'c program to interchange values of two number using pointer.', 1, 'pointer', 'In this example, we will see how to change value of two variable by using pointer.', '#include &lt;stdio.h&gt;\n#define &lt;stdlib.h&gt;\nmain()\n{\n    int x, y, *a, *b, temp;\n    printf(\"\\n Enter 1st number: \");\n    scanf(\"%d\", &x);\n    printf(\"\\n Enter 2nd number\");\n    scanf(\"%d\", &y);\n    printf(\"\\n numbers are: \\n x = %d \\n y = %d\", x, y);\n    a = &x;\n    b = &y;\n    temp = *b;\n    *b = *a;\n    *a = temp;\n    printf(\"\\n Number after interchange value :\\n x = %d\\n y = %d\", x, y);\n}', '', '$ ./a.out\r\nEnter 1st number : 3\r\nEnter 2nd number : 2\r\nnumbers are :\r\nx = 3\r\ny = 2\r\nNumber after interchange value :\r\nx = 2\r\ny = 3');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `filename` text NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `projectcategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `filename`, `description`, `price`, `created_at`, `projectcategory_id`) VALUES
(1, 'snake game', 'SNAKE-GAME-IN-C.zip', 'snake game in c', 0, '2022-05-15 09:53:20', 3),
(2, 'school management', 'schoolmanagement.zip', 'proj in java', 400, '2022-06-11 06:15:20', 1),
(3, 'e-comerse', 'ecom.zip', 'e-comerse platform in python', 700, '2022-06-11 06:15:20', 2),
(4, 't1', '', '', 0, '2022-06-11 15:16:01', 0),
(5, 't2', '', '', 0, '2022-06-11 15:16:01', 0),
(6, 't3', '', '', 0, '2022-06-11 15:20:24', 0),
(7, 't4', '', '', 0, '2022-06-11 15:20:24', 0),
(8, 't5', '', '', 0, '2022-06-11 15:20:48', 0),
(9, 't6', '', '', 0, '2022-06-11 15:20:48', 0),
(10, 't7', '', '', 0, '2022-06-11 15:21:06', 0),
(11, 't8', '', '', 0, '2022-06-11 15:21:06', 0),
(12, 't9', '', '', 0, '2022-06-11 15:21:29', 0),
(13, 't10', '', '', 0, '2022-06-11 15:21:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `projectcategory`
--

CREATE TABLE `projectcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectcategory`
--

INSERT INTO `projectcategory` (`id`, `name`) VALUES
(1, 'java'),
(2, 'python'),
(3, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `projectimages`
--

CREATE TABLE `projectimages` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectimages`
--

INSERT INTO `projectimages` (`id`, `project_id`, `image`) VALUES
(1, 1, '1.jpg'),
(2, 2, '2.jpg'),
(3, 3, '1.jpg'),
(4, 4, ''),
(5, 5, ''),
(6, 6, ''),
(7, 7, ''),
(8, 8, ''),
(9, 9, ''),
(10, 10, ''),
(11, 11, ''),
(12, 12, ''),
(13, 13, '');

-- --------------------------------------------------------

--
-- Table structure for table `projectreviews`
--

CREATE TABLE `projectreviews` (
  `id` int(11) NOT NULL,
  `review` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `qanswers`
--

CREATE TABLE `qanswers` (
  `id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `question_id` int(11) NOT NULL,
  `posted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qanswers`
--

INSERT INTO `qanswers` (`id`, `answer`, `name`, `question_id`, `posted_at`, `vote`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'raju', 1, '2022-05-14 07:01:16', 0),
(2, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'ram', 1, '2022-05-14 07:08:32', 0),
(6, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'sham', 0, '2022-05-14 09:42:37', 0),
(7, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'sham', 0, '2022-05-14 09:44:09', 0),
(8, 'kjkjsfdbhjfdbhdbsaiufiff', 'aam', 2, '2022-05-14 09:46:20', 0),
(9, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'sham', 2, '2022-05-14 09:47:24', 2),
(10, 'i dont know', 'don', 2, '2022-05-14 09:49:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questioncategory`
--

CREATE TABLE `questioncategory` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questioncategory`
--

INSERT INTO `questioncategory` (`id`, `name`) VALUES
(1, 'Web Development'),
(2, 'C++');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `description` text NOT NULL,
  `posted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `questioncategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `description`, `posted_at`, `questioncategory_id`) VALUES
(1, 'What is Lorem Ipsum?', '', '2022-05-13 19:47:57', 1),
(2, 'Where does it come from?', '', '2022-05-14 07:19:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `uidUsers` varchar(60) NOT NULL,
  `username` tinytext NOT NULL,
  `emailUsers` tinytext NOT NULL,
  `pwdUsers` varchar(64) NOT NULL,
  `isEmailConform` tinyint(4) NOT NULL,
  `token` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `country` text NOT NULL,
  `timezone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uidUsers`, `username`, `emailUsers`, `pwdUsers`, `isEmailConform`, `token`, `dob`, `country`, `timezone`) VALUES
(1, 'a', 'a', 'a@a.com', '$2y$10$2xlB0tQXGTge9FN9lrc81OXX.BADpz7ZSt9chTolRFnZm8/nMD8Oy', 0, 'WipXDKFazj', '2000-06-01', '', ''),
(2, 'b', 'b', 'b@b.b', '$2y$10$9AEY12vjstc3FvcTOA3FvOhNSKn8b6EgItF7b2a0iSZjom06lGzhO', 0, 'AC*w1YBNFK', '2000-01-01', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogcategory`
--
ALTER TABLE `blogcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcomments`
--
ALTER TABLE `blogcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectcategory`
--
ALTER TABLE `projectcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectimages`
--
ALTER TABLE `projectimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectreviews`
--
ALTER TABLE `projectreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qanswers`
--
ALTER TABLE `qanswers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questioncategory`
--
ALTER TABLE `questioncategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uidUsers` (`uidUsers`),
  ADD KEY `emailUsers` (`emailUsers`(255));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogcategory`
--
ALTER TABLE `blogcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogcomments`
--
ALTER TABLE `blogcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `projectcategory`
--
ALTER TABLE `projectcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projectimages`
--
ALTER TABLE `projectimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `projectreviews`
--
ALTER TABLE `projectreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qanswers`
--
ALTER TABLE `qanswers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `questioncategory`
--
ALTER TABLE `questioncategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
