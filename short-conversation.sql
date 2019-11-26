-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 26, 2019 at 09:39 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `short-conversation`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `audio` text NOT NULL,
  `tapescript` text NOT NULL,
  `question1` text NOT NULL,
  `a1` text NOT NULL,
  `b1` text NOT NULL,
  `c1` text NOT NULL,
  `d1` text NOT NULL,
  `correct1` varchar(1) NOT NULL,
  `question2` text NOT NULL,
  `a2` text NOT NULL,
  `b2` text NOT NULL,
  `c2` text NOT NULL,
  `d2` text NOT NULL,
  `correct2` varchar(1) NOT NULL,
  `question3` text NOT NULL,
  `a3` text NOT NULL,
  `b3` text NOT NULL,
  `c3` text NOT NULL,
  `d3` text NOT NULL,
  `correct3` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `title`, `audio`, `tapescript`, `question1`, `a1`, `b1`, `c1`, `d1`, `correct1`, `question2`, `a2`, `b2`, `c2`, `d2`, `correct2`, `question3`, `a3`, `b3`, `c3`, `d3`, `correct3`) VALUES
(1, 'Two colleagues talk about their current projects', 'https://english.best/media/toeic_mp3/3/001_TOEIC_part3.mp3', '— Hi Selynn. What are you working on?\r\n— Oh hi Peter. I\'m trying to finish my presentation for tomorrow\'s meeting. I\'m way behind.\r\n— I worked late yesterday finishing mine. Is there anything I can do to help you?\r\n— Thanks, but not right now. I\'ll let you know if I need anything later.', 'Where is the conversation taking place?', 'In a church', 'In an office', 'In a classroom', 'In a park', 'B', 'What problem does the woman have?', 'She will be late for work.', 'She cannot make the meeting.', 'She is struggling with her presentation.', 'She worked late yesterday.', 'C', 'What does the man offer?', 'To help', 'To write her report', 'To get coffee', 'To make copies', 'A'),
(2, 'A customer orders corporate catering services', 'https://english.best/media/toeic_mp3/3/002_TOEIC_part3.mp3', '— Hello, Crusty Catering. How may I help you today?\r\n— Yes, I\'m with the Colbert Corporation. We\'re having a company party next Friday, and I need to arrange for all the food and drinks.\r\n— OK. How many people do you expect to entertain? And will it be an indoor or outdoor affair?\r\n— About 100 employees will be there. And we\'ll hold it indoors in one of our large conference rooms.', 'What does the man plan to do?', 'Have a party', 'Buy office supplies', 'Take a vacation', 'Ask the woman out', 'A', 'Why does the man call the woman?', 'To inquire about prices', 'To sell her food', 'To invite her to a party', 'To order food and drinks', 'D', 'Where will the party be held?', 'In a city park', 'At the man\'s company', 'On the beach', 'In a theater', 'B');
