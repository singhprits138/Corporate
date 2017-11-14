-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2017 at 08:25 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corporate`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_work`
--

CREATE TABLE `admin_work` (
  `id` int(5) NOT NULL,
  `work_title` varchar(100) NOT NULL,
  `assign_date` date NOT NULL,
  `work_status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_work`
--

INSERT INTO `admin_work` (`id`, `work_title`, `assign_date`, `work_status`) VALUES
(2, 'Add new Employee Sadhna Singh', '2017-04-04', 'assigned'),
(3, 'go to market', '2017-04-05', 'completed'),
(4, 'Work on UI design', '2017-04-15', 'completed'),
(5, 'Work on UI design', '2017-04-15', 'completed'),
(6, 'Contact Managers of organization ', '2017-04-16', 'assigned'),
(7, 'Send mail to Manager Called Mr. Ganesh Zore', '2017-04-16', 'assigned');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `email`) VALUES
(1, 'singhsadhna330@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `idea`
--

CREATE TABLE `idea` (
  `idea_id` int(100) NOT NULL,
  `project_id` int(11) NOT NULL,
  `to_whom` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `idea_date` date DEFAULT NULL,
  `result_date` date DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `ID` int(100) NOT NULL,
  `file_name` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idea`
--

INSERT INTO `idea` (`idea_id`, `project_id`, `to_whom`, `subject`, `code`, `idea_date`, `result_date`, `status`, `ID`, `file_name`) VALUES
(40, 1, 'Manager', 'RFID Parking System Using Android', 'This is an advanced Ticketing System for the Parking spots making it very easy to tag a vehicle by using RFID tracker to identify the user and deduct amount from his wallet. This System makes the work easier on both the ends to keep a track as well as pay the amount in a very efficient way. This System uses two Android Applications one for the Parking Spot i.e. the App Attached to RFID Scanner and the other for the vehicle user. The Front End uses Android Studio and Back end as SQL Server. ', '2017-03-28', '2017-03-28', 'reject', 22, '0'),
(39, 2, 'Manager', 'Quality checking using image processing', '\nTo check quality of any product is tedious task and time consuming. Here we come up with a system where image of the product is extracted and system will check product quality. Here we will check quality of biscuits. As food product quality is checked with more concern. We will propose a computer vision based quality checking system for the biscuit. System will identify whether biscuits are cracked or not.', '2017-03-28', '2017-03-28', 'accept', 22, '0'),
(41, 1, 'TeamLeader', 'Card Payment Security Using RSA', 'Due to increasing e-commerce activity nowadays, there is a need for some encryption technique to ensure security and a way to ensure that the user’s data are securely stored in the database. Thus the system introduces RSA for this purpose.', '2017-03-29', NULL, 'send', 27, NULL),
(43, 1, 'Manager', 'Online user Behavior Analysis On Graphical Model', 'Online user Behavior Analysis On Graphical Model', '2017-04-06', '2017-04-15', 'accept', 24, NULL),
(49, 13, 'TeamLeader', 'we can make use of new android ', '#we can make use of new android \r\n#we can make use of new android ', '2017-04-18', NULL, 'send', 28, NULL),
(50, 14, 'Manager', 'we can make ppt on that', '#we can make use of new android \r\n#we can make use of new android ', '2017-04-18', '2017-04-18', 'accept', 24, NULL),
(51, 1, 'Manager', 'gtes', 'sgr', '2017-04-22', '2017-04-22', 'accept', 20, NULL),
(52, 11, 'Manager', 'Maintain a secure system', '#secure system', '2017-04-24', '2017-06-07', 'accept', 27, NULL),
(53, 12, 'TeamLeader', 'hbdsj', 'ewfjk', '2017-06-09', NULL, 'send', 24, NULL),
(54, 12, 'Manager', 'bsahdjh', 'great idea', '2017-06-09', '2017-06-09', 'accept', 24, NULL),
(55, 1, 'Manager', 'android', 'android is good', '2017-07-06', '2017-07-06', 'accept', 24, NULL),
(56, 1, 'Manager', 'adss', 'sdfsdfsd', '2017-07-13', '2017-07-13', 'reject', 24, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message_content` varchar(500) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message_status` varchar(10) NOT NULL DEFAULT 'received'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `chat_id`, `receiver_id`, `message_content`, `create_date`, `message_status`) VALUES
(187, 72, 24, 'hii how r u?', '2017-07-05 23:30:41', 'received'),
(186, 73, 9, 'hwllo how are u??', '2017-06-08 20:47:08', 'received'),
(184, 72, 24, 'hii kaju how are u..............?', '2017-06-08 07:15:18', 'received'),
(183, 72, 24, 'kjwns', '2017-06-08 06:42:13', 'received'),
(182, 72, 24, 'hsudihi', '2017-06-06 23:56:20', 'received'),
(185, 73, 9, 'hiii rusabh i m f9', '2017-06-08 07:16:04', 'received'),
(181, 75, 28, 'hii tejas', '2017-04-23 22:26:29', 'send'),
(180, 74, 27, 'Hiii', '2017-04-23 01:56:33', 'received'),
(179, 73, 9, 'gmlk', '2017-04-23 01:51:53', 'received'),
(178, 72, 24, 'askj', '2017-04-23 00:35:49', 'received'),
(177, 71, 24, 'Yes just go to the document that i have given ... follow the instruction given in the documents', '2017-04-17 09:33:14', 'received'),
(175, 70, 20, 'Can You please tell me what to do in html part....?', '2017-04-17 09:29:10', 'received'),
(176, 71, 24, 'Hii kajal....', '2017-04-17 09:32:36', 'received'),
(174, 70, 20, 'Hii Sadhna', '2017-04-17 09:28:45', 'received'),
(188, 72, 24, 'fgdfgd', '2017-08-23 07:24:10', 'send');

-- --------------------------------------------------------

--
-- Table structure for table `message_list`
--

CREATE TABLE `message_list` (
  `chat_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `header` varchar(100) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message_status` varchar(10) NOT NULL DEFAULT 'received'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_list`
--

INSERT INTO `message_list` (`chat_id`, `created_by`, `header`, `create_date`, `message_status`) VALUES
(75, 27, 'hii tejas', '2017-04-23 22:26:29', 'send'),
(74, 28, 'Hiii', '2017-04-23 01:56:33', 'send'),
(73, 24, 'hwllo how ', '2017-06-08 20:47:08', 'send'),
(72, 9, 'fgdfgd', '2017-08-23 07:24:10', 'send'),
(71, 20, 'Yes just g', '2017-04-17 09:33:14', 'send'),
(70, 24, 'Can You pl', '2017-04-17 09:29:10', 'send');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(10) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `project_type` varchar(30) DEFAULT NULL,
  `project_desc` varchar(1000) NOT NULL,
  `project_assign_date` date NOT NULL,
  `project_sub_date` date NOT NULL,
  `assign_manager_id` int(10) NOT NULL,
  `planning_date` date DEFAULT NULL,
  `designing_date` date DEFAULT NULL,
  `testing_date` date DEFAULT NULL,
  `file_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `project_type`, `project_desc`, `project_assign_date`, `project_sub_date`, `assign_manager_id`, `planning_date`, `designing_date`, `testing_date`, `file_name`) VALUES
(1, 'Web Portal for organisation', 'Current Project', 'My Organization is a page in the portal website that contains a list of your organization''s members and links to find content and groups that belong to your organization. All members of the organization can view this page to see their own profile and information about other members, as well as access links to find the organization''s content and groups.\n\nAdministrators have access to additional functionality through the My Organization page, including options to add members, set roles, customize the website, and manage the organization''s content and groups. See the Administrator Guide for more information.', '2016-12-29', '2016-12-29', 9, NULL, NULL, NULL, ''),
(11, 'Secure Online Auction System', 'Future Project', '\r\nOnline auction however is a different business model where the items are sold through price bidding. Usually bidding have start price and ending time. Potential buyers in auction and the winner is the one who bids the item for highest price. We treat the fraud detection with a binary classification. For buying product online user have to provide his personal details like email address, license number, PAN number etc. Only the valid user will have authority to bid. This prevents various frauds according in online shopping.', '2017-04-17', '2017-04-16', 9, '2017-04-17', '1970-01-01', '1970-01-01', 'PIG.docx'),
(12, 'Cursor Movement On Object Motion', 'Pending Project', 'Here we proposed a system where cursor move through desktop and action will occur based on hand gesture. System will apply object movement based on RGB color. System will detect RGB color object which will act as mouse. We had imported java awt in this application. This library is imported in order to work with cursor. Webcam is used in this system to track the movement of the red, green and blue object. Based on the movement of object system will fire an event. System will get desktop screen size. System will acquire single frame from video. System will flip the frame for user friendliness. System will convert the image into binary image with the red,blue,or greeen objects as white. System will add bounding box around the object which is moved by the user around the display. Bounding box centroid is calculated. System will detect mouse point routine.', '2017-04-17', '2017-04-17', 9, '2017-04-17', '1970-01-01', '1970-01-01', 'note3.txt'),
(13, 'Android Battery Saver System', 'Future Project', '\r\nThis System is an innovative Application allowing the System to take the usage from Build-in classes and put a list in front of the user for him to review. The List also consists of the applications taking the battery usage and also determines the battery level. If the Battery level is low and the consumption of apps is more the system will trigger an alarm telling the user to force stop or close the apps.\r\nThis System uses Android Studio as its front end and doesn’t use any backend as this type of application doesn’t need one since it uses the data from the phone itself and projects to the user.\r\nSo basically the system helps the user to refrain certain apps to consume more battery power and drain it quickly and user can take some actions on it.', '2017-04-17', '2017-04-15', 9, '2017-04-17', '1970-01-01', '1970-01-01', 'Codigniter3.txt'),
(14, 'Filtering political sentiment in social media from', 'Current Project', '\r\nSocial media is now playing a vital role in influencing people’s sentiment in favour or against a government or an organization. Therefore, to understand the sentiment of any posting in social media, an efficient method is an ultimate necessity. We have analyzed some facebook postings to understand political sentiments. In any politically motivated posting there are some dominant keywords. At first, we have prepared a dictionary consisting of unique words collected from political or non political posts or comments and then trained using Naïve Bayes algorithm based on probability theory. To identify the sentiment expressed in a new post or comment, we have extracted each word of the posting and then matched those with the dictionary words for classification.', '2017-04-17', '2017-04-15', 9, '2017-04-17', '1970-01-01', '1970-01-01', 'agreement.txt');

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE `users1` (
  `unique_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(225) CHARACTER SET utf8 NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `position` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `salt` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` bigint(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `reputation` int(11) NOT NULL,
  `reputation_status` varchar(1) NOT NULL DEFAULT 'N',
  `hired_date` date DEFAULT NULL,
  `photo` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `team_leader_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `terms` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`unique_id`, `name`, `email`, `username`, `password`, `position`, `address`, `gender`, `salt`, `phone`, `date_of_birth`, `reputation`, `reputation_status`, `hired_date`, `photo`, `salary`, `team_leader_id`, `manager_id`, `terms`) VALUES
(9, 'Mr. Rushabh Wadkar', 'rus@gmail.com', 'rushabh', 'e7e67f49e3b8f9dd0df617f8504198d1de30244e', 'Manager', 'Panvel', 'Male', 'ndP&DP5a', 9004196353, '1197-12-08', 9, 'N', '2007-05-12', 'rushabh.png', 1000000, NULL, NULL, 0),
(100, 'Admin', 'admin@gmail.com', 'admin', '2718ab40544164201dc11f15ad3e1c7f6a53dc69', 'Admin', 'office', 'Male', 'v,8JaVyC', 9005787672, '2017-03-16', 0, 'N', '2016-04-23', '', 0, NULL, NULL, 0),
(20, 'Ms. Sadhna Singh', 'sa@gmail.com', 'sadhna', '37de8e573220fb352a1a419c08de932960dd7f3c', 'TeamLeader', 'seawood', 'Female', 'vbzPqx8P', 9075765562, '1995-02-01', 0, 'N', '2007-05-12', '', 65600, NULL, 9, 1),
(11, 'Mr. Ganesh Zore', 'gary1@gmail.com', 'ganesh', 'fe84a736c671e9ab8b3f229bd8afd02abfcee4b2', 'Manager', 'Worli', 'Male', 'p+w7pLrf', 8768767567, '1994-04-23', 20, 'N', '2015-05-12', '', 50000, NULL, NULL, 1),
(22, 'Mr. Sharvil Turbhadkar', 'sha@gmail.com', 'sharvil', 'b7f574ade5df76aa7e97be39a289e6cf7c6bb7f4', 'TeamLeader', 'kharghar', 'Male', '7LJQSsRr', 8898786672, '1995-04-23', 22, 'N', '2016-04-23', '', 25000, NULL, 9, 1),
(24, 'Kajal Sutar', 'ka@gmail.com', 'kajal', 'af7a993cfe0435bc29707a2b5063e70dc2f64fa3', 'TeamLeader', 'Prabhadevi', 'Female', 'dX&RmwJR', 8786876756, '1994-03-12', 0, 'N', '2015-09-12', '', 22000, 20, NULL, 1),
(26, 'Vaidehi Temghare', 'vai@gmail.com', 'vaidehi', '0d1500571e3f1e341ec230382f9954f7b51037f1', 'Employee', 'Virar', 'Female', '/hzYLz/!', 9897896879, '1994-03-12', 18, 'N', '2014-02-12', '', 25000, 20, NULL, 1),
(27, 'Swapnil Velunde', 'swap@gmail.com', 'swapnil', 'b1bdb3b1642e2128745ee1138af7e95a5e527e38', 'Employee', 'Dahanu', 'Male', 'WYRTWJ4N', 8970987897, '1993-03-07', 0, 'I', '2015-02-11', '', 25000, 22, NULL, 1),
(28, 'Tejas Zarekar', 'tej@gmail.com', 'tejas', '1aa1cc0c1416381d26ea5c3fdcffcd3ef8627e5f', 'Employee', 'Nerul', 'Male', 'T&thR68u', 8907667398, '1995-04-23', 20, 'N', '2015-03-12', '', 25000, 22, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `work_assign`
--

CREATE TABLE `work_assign` (
  `project_id` int(11) DEFAULT NULL,
  `work_id` int(11) NOT NULL,
  `base_work_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) NOT NULL,
  `work_title` varchar(100) NOT NULL,
  `assign_date` date DEFAULT NULL,
  `days` int(11) NOT NULL,
  `work_status` varchar(20) NOT NULL DEFAULT 'assigned',
  `completion_date` date DEFAULT NULL,
  `descr` varchar(500) NOT NULL,
  `file_name` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_assign`
--

INSERT INTO `work_assign` (`project_id`, `work_id`, `base_work_id`, `sender_id`, `receiver_id`, `work_title`, `assign_date`, `days`, `work_status`, `completion_date`, `descr`, `file_name`) VALUES
(0, 81, 0, 0, 27, 'Work on the project called gateway of india vistior survey.', '2017-03-29', 34, 'assigned', NULL, 'Download the file regarding gateway of india survey. input is given in the file based on that complete the graphs in R.', 'gate_of_india.jpg'),
(0, 82, 0, 0, 27, 'Complete the CSS File', '2017-03-29', 424, 'assigned', NULL, 'I have given you the style.css file of our project just modify it for more user interaction.', 'style.css'),
(1, 80, 72, 100, 11, 'Make an Presentation on IOT for our clients.', '2017-03-29', 39, 'assigned', NULL, 'Make an presentation for IOt for understanding the clients more specifically', NULL),
(0, 73, 0, 100, 9, 'Meet Mr. Verma for technical issue in monitors of Room No. 232', '2017-03-26', 32, 'submitted', '2017-04-17', 'Ask Mr. Verma to replace the monitors or check the issue in monitors.', 'view_chat.php'),
(0, 86, 0, 9, 20, 'Warehouse Management System', '2017-04-17', 30, 'submitted', '2017-04-17', 'The Warehouse Management System is a real-time warehouse database capable of handling large inventories of an organization. This can be used to track the inventory of a single store, or to manage the distribution of stock between several stores of a larger franchise. However, the system merely records sales and restocking data and provides notification of low stock at any location at a specified interval. The goal is to reduce the strain of tracking rather than to handle all store maintenance. T', 'Presentation1.pptx'),
(0, 87, 0, 9, 22, 'Unique User Identification Across Multiple Social Networks', '2017-04-17', 30, 'submitted', '2017-04-17', 'There are number of social network sites that connect a large amount of people around the world. All social networking sites differ from each other based on various components such as Graphical User Interface, functionality, features etc. Many users have virtual identities on various social network sites. It is common that people are users of more than one social network and also their friends may be registered on multiple social network sites. User may login to different social networking sites', 'POC.docx'),
(0, 88, 0, 20, 24, 'Warehouse Management System ', '2017-04-17', 15, 'submitted', '2017-07-06', 'Complete the html ,css part of DWM', 'Codigniter2.txt'),
(0, 89, 0, 20, 26, 'Warehouse Management System ', '2017-04-17', 15, 'assigned', NULL, 'Work on the backend part of DWM i.e PHP,JSON', 'CSC2.docx'),
(0, 90, 88, 24, 24, 'Complete the html part', '2017-04-17', 10, 'completed', NULL, 'use the Html 5 and take reference from w3schools if any problem', NULL),
(0, 91, 88, 24, 24, 'Complete the css part', '2017-04-17', 5, 'completed', NULL, 'take reference from css.com site', NULL),
(0, 92, 0, 0, 24, 'Make an presenatation for home automation', '2017-04-17', 2, 'submitted', '2017-04-17', 'Keep more graphical things for user understanding', 'htwfaip2.pdf'),
(0, 93, 0, 0, 9, 'Arrange a Meeting with the technical employees', '2017-04-17', 2, 'assigned', NULL, 'Prepare for the presentation for the meeting', 'note2.txt'),
(0, 94, 93, 9, 20, 'meeting with technical panel', '2017-04-17', 1, 'completed', '2017-04-17', 'Download the above file and make changes', NULL),
(0, 95, 0, 0, 20, 'prepare a presentation for Mr. ravi', '2017-04-17', 5, 'submitted', '2017-04-17', 'they want it more graphical changes in their file', '4.27-BE_computer_Engg1.pdf'),
(11, 96, 0, 100, 9, 'Secure Online Auction System', '2017-04-17', 20, 'assigned', NULL, '\nOnline auction however is a different business model where the items are sold through price bidding.', 'PIG.docx'),
(11, 98, 96, 9, 22, 'Secure Online Auction System', '2017-04-17', 5, 'assigned', NULL, 'Make  a quick ppt on this system', NULL),
(0, 99, 0, 22, 28, 'Unique User Identification Across Multiple Social Networks', '2017-04-17', 10, 'submitted', '2017-04-17', 'Make a synopsis on this system', '0032.jpg'),
(13, 100, 0, 100, 9, 'Android Battery Saver System', '2017-04-17', 50, 'assigned', NULL, '\r\nThis System is an innovative Application allowing the System to take the usage from Build-in classes and put a list in front of the user for him to review. The List also consists of the applications taking the battery usage and also determines the battery level. If the Battery level is low and the consumption of apps is more the system will trigger an alarm telling the user to force stop or close the apps.\r\nThis System uses Android Studio as its front end and doesn’t use any backend as this ty', 'Codigniter3.txt'),
(12, 97, 0, 100, 9, 'Cursor Movement On Object Motion', '2017-04-17', 11, 'assigned', NULL, 'Here we proposed a system where cursor move through desktop and action will occur based on hand gesture. System will apply object movement based on RGB color. System will detect RGB color object which will act as mouse. We had imported java awt in this application. This library is imported in order to work with cursor. Webcam is used in this system to track the movement of the red, green and blue object. Based on the movement of object system will fire an event. System will get desktop screen si', 'note3.txt'),
(14, 101, 0, 100, 9, 'Filtering political sentiment in social media from textual information', '2017-04-17', 40, 'assigned', NULL, '\nSocial media is now playing a vital role in influencing people’s sentiment in favour or against a government or an organization. ', 'agreement.txt'),
(14, 102, 101, 9, 20, 'Filtering political sentiment in social media from textual information', '2017-04-17', 3, 'completed', NULL, 'make ppt on Filtering political sentiment in social media from textual information', NULL),
(0, 103, 99, 28, 28, 'Unique User Identification Across Multiple Social Networks', '2017-04-17', 2, 'completed', NULL, 'Unique User Identification Across Multiple Social Networks', NULL),
(14, 110, 109, 24, 24, 'Filtering political sentiment in social media from textual information', '2017-04-17', 5, 'completed', NULL, 'Filtering political sentiment in social media from textual information', NULL),
(0, 111, 0, 9, 20, 'dsfhiuh', '2017-04-18', 4, 'assigned', NULL, 'sjaij', 'last_pages.docx'),
(0, 112, 0, 0, 9, 'gdsa', '2017-06-07', 6, 'assigned', NULL, 'hsbadj', 'darpan.jpg'),
(0, 113, 0, 0, 9, 'huid', '2017-06-07', 7, 'assigned', NULL, 'iuxhiu', 'children.jpg'),
(0, 106, 86, 20, 24, '`Warehouse Management System', '2017-04-17', 5, 'completed', NULL, 'Warehouse Management System', NULL),
(0, 107, 94, 20, 24, 'meet with technical panel', '2017-04-17', 1, 'completed', '2017-04-17', 'meet with technical panel', NULL),
(0, 108, 107, 24, 24, 'meet with technical panel', '2017-04-17', 1, 'completed', NULL, 'meet with technical panel', NULL),
(14, 109, 102, 20, 24, 'Filtering political sentiment in social media from textual information', '2017-04-17', 5, 'completed', NULL, 'Filtering political sentiment in social media from textual information', NULL),
(0, 114, 0, 0, 9, 'jhsfdj', '2017-06-09', 6, 'assigned', NULL, 'shdkj', '57.jpg'),
(0, 115, 0, 0, 9, 'kjbKL', '2017-07-06', 12, 'assigned', NULL, 'bkjdbjk', 'sadhna.docx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_work`
--
ALTER TABLE `admin_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idea`
--
ALTER TABLE `idea`
  ADD PRIMARY KEY (`idea_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_list`
--
ALTER TABLE `message_list`
  ADD PRIMARY KEY (`chat_id`),
  ADD UNIQUE KEY `chat_id` (`chat_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `users1`
--
ALTER TABLE `users1`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `work_assign`
--
ALTER TABLE `work_assign`
  ADD PRIMARY KEY (`work_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_work`
--
ALTER TABLE `admin_work`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `idea`
--
ALTER TABLE `idea`
  MODIFY `idea_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `message_list`
--
ALTER TABLE `message_list`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users1`
--
ALTER TABLE `users1`
  MODIFY `unique_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `work_assign`
--
ALTER TABLE `work_assign`
  MODIFY `work_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
