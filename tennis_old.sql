-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2015 at 02:39 AM
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
(1, 'Mens Mon Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(2, 'Mens Tue Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(3, 'Mens Wed Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(4, 'Mens Thu Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(5, 'Mens Fri Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(6, 'Mens Sat Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(7, 'Mens Sun Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(8, 'Womens Mon Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(9, 'Womens Tue Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(10, 'Womens Wed Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(11, 'Womens Thu Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(12, 'Womens Fri Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(13, 'Womens Sat Singles', 8, 4, 7, 'Singles', '3.0', '2015-01-01', '2015-12-31', 'A'),
(14, 'Womens Sun Singles', 8, 4, 7, 'Singles', '2.0', '2015-01-01', '2015-01-25', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `league_assignment`
--

CREATE TABLE IF NOT EXISTS `league_assignment` (
`league_assign_id` int(11) NOT NULL,
  `league_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `player_slot_num` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `league_assignment`
--

INSERT INTO `league_assignment` (`league_assign_id`, `league_id`, `player_id`, `player_slot_num`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 1, 2, 2),
(5, 2, 2, 2);

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
(1, 'Roger', 'Federer', 'player1@email.com', '111-111-1111', 'M', '3.0'),
(2, 'Rod', 'Laver', 'player2@email.com', '222-222-2222', 'M', '4.0'),
(3, 'Pete', 'Sampras', 'player3@email.com', '333-333-3333', 'M', '5.0'),
(4, 'Yannick', 'Noah', 'player4@email.com', '444-444-4444', 'M', '3.5'),
(5, 'Rafael', 'Nadal', 'player5@email.com', '555-555-5555', 'M', '4.5'),
(6, 'Martina', 'Navratilova', 'player6@email.com', '666-666-6666', 'F', '3.0'),
(7, 'Steffi', 'Graf', 'player7@email.com', '777-777-7777', 'F', '4.0'),
(8, 'Serena', 'Williams', 'player8@email.com', '888-888-8888', 'F', '5.0'),
(9, 'Venus', 'Williams', 'player9@email.com', '999-999-9999', 'F', '3.5'),
(10, 'Maria', 'Sharapova', 'player10@email.com', '111-222-3333', 'F', '4.5');

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
MODIFY `league_assign_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
