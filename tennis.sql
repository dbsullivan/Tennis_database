-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2015 at 05:05 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tennis`
--

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE IF NOT EXISTS `league` (
`league_id` int(11) NOT NULL,
  `league_name` varchar(50) NOT NULL,
  `num_player_slots` int(11) NOT NULL,
  `num_courts_needed` int(11) NOT NULL,
  `num_events` int(11) DEFAULT NULL,
  `type_singles_doubles` varchar(15) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `league`
--

INSERT INTO `league` (`league_id`, `league_name`, `num_player_slots`, `num_courts_needed`, `num_events`, `type_singles_doubles`, `level`, `start_date`, `end_date`, `status`) VALUES
(1, 'Mens Mon Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(2, 'Mens Tue Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(3, 'Mens Wed Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(4, 'Mens Thu Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(5, 'Mens Fri Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(6, 'Mens Sat Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(7, 'Mens Sun Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(8, 'Womens Mon Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(9, 'Womens Tue Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(10, 'Womens Wed Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(11, 'Womens Thu Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(12, 'Womens Fri Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(13, 'Womens Sat Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A'),
(14, 'Womens Sun Singles', 8, 4, 7, 'Singles', '3.0', NULL, NULL, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `league_assignment`
--

CREATE TABLE IF NOT EXISTS `league_assignment` (
`league_assign_id` int(11) NOT NULL,
  `league_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `player_slot_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
`player_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `NTRP_level` varchar(5) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `first_name`, `last_name`, `email`, `phone`, `gender`, `NTRP_level`) VALUES
(1, 'Player', 'Player1', 'dbsullivan@madisoncollege.edu', '111-22-3333', 'M', '3.0'),
(2, 'Player', 'Player2', 'dbsullivan@madisoncollege.edu', '111-22-3333', 'M', '3.0'),
(3, 'Player', 'Player3', 'dbsullivan@madisoncollege.edu', '111-22-3333', 'M', '3.0'),
(4, 'Player', 'Player4', 'dbsullivan@madisoncollege.edu', '111-22-3333', 'M', '3.0'),
(5, 'Player', 'Player5', 'dbsullivan@madisoncollege.edu', '111-22-3333', 'M', '3.0'),
(6, 'Player', 'Player6', 'dbsullivan@madisoncollege.edu', '111-22-3333', 'M', '3.0'),
(7, 'Player', 'Player7', 'dbsullivan@madisoncollege.edu', '111-22-3333', 'M', '3.0'),
(8, 'Player', 'Player8', 'dbsullivan@madisoncollege.edu', '111-22-3333', 'M', '3.0'),
(9, 'Player', 'Player9', 'dbsullivan@madisoncollege.edu', '111-22-3333', 'M', '3.0'),
(10, 'Player', 'Player10', 'dbsullivan@madisoncollege.edu', '111-22-3333', 'M', '3.0');

-- --------------------------------------------------------

--
-- Table structure for table `player_matches`
--

CREATE TABLE IF NOT EXISTS `player_matches` (
`match_id` int(11) NOT NULL,
  `league_id` int(11) NOT NULL,
  `match_player_1` int(11) NOT NULL,
  `match_player_2` int(11) NOT NULL,
  `match_player_3` int(11) DEFAULT NULL,
  `match_player_4` int(11) DEFAULT NULL,
  `match_event_num` int(11) DEFAULT NULL,
  `match_event_date` date DEFAULT NULL,
  `match_court_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_name` varchar(15) NOT NULL,
  `user_pass` varchar(15) NOT NULL,
`id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `user_pass`, `id`) VALUES
('admin1', 'admin1', 1),
('admin2', 'admin2', 2),
('appuser1', 'appuser1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_name` varchar(15) NOT NULL,
  `role_name` varchar(15) NOT NULL,
`id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_name`, `role_name`, `id`) VALUES
('admin1', 'admin', 1),
('admin2', 'admin', 2),
('admin2', 'appuser', 3),
('appuser1', 'appuser', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `league`
--
ALTER TABLE `league`
 ADD PRIMARY KEY (`league_id`);

--
-- Indexes for table `league_assignment`
--
ALTER TABLE `league_assignment`
 ADD PRIMARY KEY (`league_assign_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
 ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `player_matches`
--
ALTER TABLE `player_matches`
 ADD PRIMARY KEY (`match_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `league`
--
ALTER TABLE `league`
MODIFY `league_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `league_assignment`
--
ALTER TABLE `league_assignment`
MODIFY `league_assign_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `player_matches`
--
ALTER TABLE `player_matches`
MODIFY `match_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
