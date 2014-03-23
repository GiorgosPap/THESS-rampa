
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 23, 2014 at 03:08 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a1790531_thess`
--

-- --------------------------------------------------------

--
-- Table structure for table `rampa`
--

CREATE TABLE `rampa` (
  `r_id` int(11) NOT NULL,
  `r_lat` double NOT NULL,
  `r_lng` double NOT NULL,
  `r_movement` varchar(16) NOT NULL,
  `r_type` varchar(32) NOT NULL,
  `r_floor` text NOT NULL,
  `r_cond_floor` varchar(16) NOT NULL,
  `r_parking` varchar(16) NOT NULL,
  `r_rating` varchar(16) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rampa`
--

INSERT INTO `rampa` VALUES(1, 40.630977, 22.952999, 'ΚΑΚΗ', 'Ευθύγραμμη', 'Τσιμέντο', 'ΚΑΚΗ', 'ΝΑΙ', 'red');
INSERT INTO `rampa` VALUES(2, 40.6303, 22.952606, 'ΚΑΛΗ', 'Ισόπεδη ράμπα', 'Τεχνητός Κυβόλιθος από Σκυρόδεμα', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(3, 40.630076, 22.95241, 'ΜΕΤΡΙΑ', 'Ισόπεδη ράμπα', 'Τεχνητός Κυβόλιθος από Σκυρόδεμα', 'ΚΑΛΗ', 'ΝΑΙ', 'yellow');
INSERT INTO `rampa` VALUES(4, 40.629881, 22.952239, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κίτρινου χρώματος', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(5, 40.629877, 22.952217, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κίτρινου χρώματος', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(6, 40.629863, 22.952199, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(7, 40.629842, 22.952201, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(8, 40.62959, 22.951963, 'ΚΑΛΗ', 'Ισόπεδη ράμπα', 'Τεχνητός Κυβόλιθος από Σκυρόδεμα', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(9, 40.628672, 22.951115, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(10, 40.628649, 22.951091, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(11, 40.628, 22.95052, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(12, 40.628879, 22.950675, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος από σκυρόδεμα', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(13, 40.62891, 22.95068, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(14, 40.628892, 22.95071, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(15, 40.629814, 22.951533, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(16, 40.629802, 22.95156, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(17, 40.629822, 22.951584, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(18, 40.629838, 22.951552, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(19, 40.630062, 22.951764, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(20, 40.630048, 22.951794, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(21, 40.630087, 22.951807, 'ΚΑΛΗ', 'Ισόπεδη ράμπα', 'Τεχνητός Κυβόλιθος από Σκυρόδεμα', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(22, 40.631634, 22.952156, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΝΑΙ', 'yellow');
INSERT INTO `rampa` VALUES(23, 40.631652, 22.952126, 'ΚΑΚΗ', 'Ευθύγραμμη αυτοσχέδια', 'Μπετόν', 'ΚΑΚΗ', 'ΝΑΙ', 'red');
INSERT INTO `rampa` VALUES(24, 40.630341, 22.951356, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κίτρινου χρώματος', 'ΚΑΛΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(25, 40.630374, 22.951303, 'ΜΕΤΡΙΑ', 'Ισόπεδη ράμπα', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κίτρινου χρώματος', 'ΚΑΛΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(26, 40.630406, 22.951244, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κίτρινου χρώματος', 'ΚΑΛΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(27, 40.630406, 22.951222, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κίτρινου χρώματος', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(28, 40.630386, 22.951201, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(29, 40.630372, 22.951203, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(30, 40.630341, 22.95126, 'ΚΑΛΗ', 'Ισόπεδη ράμπα', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(31, 40.630308, 22.951321, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(32, 40.630064, 22.951064, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου χρώματος κόκκινου και λειασμένη επιφάνεια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(33, 40.630078, 22.951034, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου χρώματος κόκκινου και λειασμένη επιφάνεια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(34, 40.630121, 22.950962, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου χρώματος κόκκινου και λειασμένη επιφάνεια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(35, 40.629616, 22.950383, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου χρώματος κόκκινου και λειασμένη επιφάνεια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(36, 40.629602, 22.950412, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου χρώματος κόκκινου και λειασμένη επιφάνεια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(37, 40.629565, 22.950485, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου χρώματος κόκκινου και λειασμένη επιφάνεια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(38, 40.629551, 22.950511, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου χρώματος κόκκινου και λειασμένη επιφάνεια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(39, 40.629303, 22.950093, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου χρώματος κόκκινου και λειασμένη επιφάνεια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(40, 40.629262, 22.950157, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου χρώματος κόκκινου και λειασμένη επιφάνεια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(41, 40.629244, 22.950182, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου χρώματος κόκκινου και λειασμένη επιφάνεια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(42, 40.629207, 22.950147, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(43, 40.629189, 22.950128, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(44, 40.629244, 22.950023, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(45, 40.628678, 22.949436, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(46, 40.628696, 22.949409, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(47, 40.629256, 22.949988, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(48, 40.629101, 22.948709, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος κόκκινου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(49, 40.630738, 22.950576, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος κόκκινου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(50, 40.630832, 22.950396, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος κόκκινου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(51, 40.630854, 22.950418, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος κόκκινου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια', 'ΜΕΤΡΙΑ', 'ΝΑΙ', 'yellow');
INSERT INTO `rampa` VALUES(52, 40.63076, 22.950597, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος κόκκινου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια', 'ΜΕΤΡΙΑ', 'ΝΑΙ', 'yellow');
INSERT INTO `rampa` VALUES(53, 40.631257, 22.95108, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος κόκκινου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(54, 40.631345, 22.950906, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος κόκκινου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(55, 40.631367, 22.95093, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος κόκκινου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(56, 40.631277, 22.951096, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος κόκκινου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(57, 40.631919, 22.951627, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος κόκκινου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(58, 40.632293, 22.950868, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κίτρινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(59, 40.632309, 22.950839, 'ΚΑΚΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κίτρινου χρώματος', 'ΚΑΚΗ', 'ΝΑΙ', 'red');
INSERT INTO `rampa` VALUES(60, 40.631678, 22.949036, 'ΚΑΛΗ', 'Ισόπεδη ράμπα', 'Τεχνητός Κυβόλιθος από Σκυρόδεμα', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(61, 40.631731, 22.948857, 'ΚΑΛΗ', 'Ισόπεδη ράμπα', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(62, 40.631778, 22.94894, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(63, 40.631579, 22.949141, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(64, 40.631229, 22.949669, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(65, 40.631239, 22.949645, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(66, 40.630744, 22.949192, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(67, 40.630758, 22.94917, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(68, 40.630974, 22.948736, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(69, 40.630958, 22.948712, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(70, 40.630429, 22.948486, 'ΚΑΚΗ', 'Ευθύγραμμη αυτοσχέδια', 'Τσιμέντο', 'ΚΑΚΗ', 'ΟΧΙ', 'red');
INSERT INTO `rampa` VALUES(71, 40.630209, 22.9485, 'ΚΑΚΗ', 'Ευθύγραμμη αυτοσχέδια', 'Τσιμέντο', 'ΚΑΚΗ', 'ΟΧΙ', 'red');
INSERT INTO `rampa` VALUES(72, 40.62973, 22.947987, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(73, 40.629669, 22.94792, 'ΚΑΛΗ', 'Ισόπεδη ράμπα', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(74, 40.629533, 22.947974, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(75, 40.629508, 22.94799, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(76, 40.62985, 22.947711, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(77, 40.629757, 22.947639, 'ΚΑΛΗ', 'Ισόπεδη ράμπα', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(78, 40.630791, 22.947446, 'ΚΑΛΗ', 'Ισόπεδη ράμπα', 'Τεχνητός Κυβόλιθος από Σκυρόδεμα', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(79, 40.630504, 22.946426, 'ΚΑΛΗ', 'Ισόπεδη ράμπα', 'Τεχνητός Κυβόλιθος από Σκυρόδεμα', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(80, 40.631538, 22.94913, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(81, 40.631672, 22.948835, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(82, 40.631713, 22.948693, 'ΚΑΛΗ', 'Ισόπεδη ράμπα', 'Τεχνητός Κυβόλιθος από Σκυρόδεμα', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(83, 40.631803, 22.948607, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(84, 40.63209, 22.948226, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια και αυλακώσεις κίτρινου χρώματος', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(85, 40.632102, 22.948202, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(86, 40.632425, 22.947609, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(87, 40.632578, 22.947601, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(88, 40.632401, 22.947593, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3.5(±3mm), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται απο τετραγωνάκια(διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(89, 40.632187, 22.947132, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(90, 40.632273, 22.947121, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(91, 40.632338, 22.947086, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(92, 40.632161, 22.947089, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(93, 40.631338, 22.94729, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(94, 40.631343, 22.947328, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(95, 40.630962, 22.945742, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(96, 40.630939, 22.94578, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(97, 40.630929, 22.94578, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(98, 40.631807, 22.94446, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(99, 40.631825, 22.94446, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τεχνητός κυβόλιθος κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(100, 40.633219, 22.945775, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(101, 40.633221, 22.945791, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(102, 40.633187, 22.945866, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(103, 40.633207, 22.945887, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(104, 40.633512, 22.946209, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(105, 40.633539, 22.946225, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(106, 40.633555, 22.946223, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(107, 40.633213, 22.94681, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(108, 40.633195, 22.946834, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(109, 40.632936, 22.947325, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(110, 40.632918, 22.947349, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(111, 40.632603, 22.947548, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(112, 40.632613, 22.947596, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(113, 40.632995, 22.949516, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμέντο /Κόκκινο', 'ΚΑΚΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(114, 40.634021, 22.947556, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΝΑΙ', 'yellow');
INSERT INTO `rampa` VALUES(115, 40.634036, 22.947523, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(116, 40.634304, 22.946941, 'ΚΑΚΗ', 'Ευθύγραμμη αυτοσχέδια', 'Τσιμέντο/Κίτρινο', 'ΚΑΚΗ', 'ΝΑΙ', 'red');
INSERT INTO `rampa` VALUES(117, 40.634268, 22.946885, 'ΚΑΚΗ', 'Ευθύγραμμη αυτοσχέδια', 'Τσιμέντο', 'ΚΑΚΗ', 'ΟΧΙ', 'red');
INSERT INTO `rampa` VALUES(118, 40.632355, 22.947335, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(119, 40.632314, 22.947405, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τσιμεντόπλακα νέου τύπου με ανάγλυφη επιφάνεια με αυλακώσεις κόκκινου χρώματος', 'ΚΑΛΗ', 'ΟΧΙ', 'green');
INSERT INTO `rampa` VALUES(120, 40.632876, 22.949805, 'ΚΑΛΗ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3,5 (± 3 mm ), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται από τετραγωνάκια (διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΚΑΛΗ', 'ΟΧΙ', 'yellow');
INSERT INTO `rampa` VALUES(121, 40.63288, 22.949795, 'ΜΕΤΡΙΑ', 'Ευθύγραμμη', 'Τετράγωνη πλάκα πεζοδρομίου διαστάσεων 40Χ40Χ3,5 (± 3 mm ), χρώματος μαύρου και λειασμένη επιφάνεια που αποτελείται από τετραγωνάκια (διαστάσεων 5Χ5 cm) με κυματιστές γραμμές', 'ΜΕΤΡΙΑ', 'ΟΧΙ', 'yellow');
