-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2019 at 11:16 AM
-- Server version: 5.7.23
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devjam`
--

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `diseases` varchar(100) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `specialist` varchar(50) NOT NULL,
  `fever` varchar(3) NOT NULL,
  `weightloss` varchar(3) NOT NULL,
  `thirsty` varchar(3) NOT NULL,
  `tired` varchar(3) NOT NULL,
  `frequenturinating` varchar(3) NOT NULL,
  `vomiting` varchar(3) NOT NULL,
  `angina` varchar(3) NOT NULL,
  `chestpain` varchar(3) NOT NULL,
  `palpitations` varchar(3) NOT NULL,
  `breathelessness` varchar(3) NOT NULL,
  `highcholesterol` varchar(3) NOT NULL,
  `highbloodpressure` varchar(3) NOT NULL,
  `suddennumbness` varchar(3) NOT NULL,
  `diabetes` varchar(3) NOT NULL,
  `paralysis` varchar(3) NOT NULL,
  `suddenlossofvision` varchar(3) NOT NULL,
  `difficultyswallowing` varchar(3) NOT NULL,
  `headache` varchar(3) NOT NULL,
  `sluggishspeech` varchar(3) NOT NULL,
  `influenza` varchar(3) NOT NULL,
  `pneuomnia` varchar(3) NOT NULL,
  `cough` varchar(3) NOT NULL,
  `sneezing` varchar(3) NOT NULL,
  `muscleaches` varchar(3) NOT NULL,
  `bronchitis` varchar(3) NOT NULL,
  `tuberculosis` varchar(3) NOT NULL,
  `wheezing` varchar(3) NOT NULL,
  `bonepain` varchar(3) NOT NULL,
  `excessbodyweight` varchar(3) NOT NULL,
  `blurredvision` varchar(3) NOT NULL,
  `memoryproblems` varchar(3) NOT NULL,
  `disturbedsleep` varchar(3) NOT NULL,
  `depression` varchar(3) NOT NULL,
  `nightsweats` varchar(3) NOT NULL,
  `abdominalpain` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`diseases`, `diagnosis`, `specialist`, `fever`, `weightloss`, `thirsty`, `tired`, `frequenturinating`, `vomiting`, `angina`, `chestpain`, `palpitations`, `breathelessness`, `highcholesterol`, `highbloodpressure`, `suddennumbness`, `diabetes`, `paralysis`, `suddenlossofvision`, `difficultyswallowing`, `headache`, `sluggishspeech`, `influenza`, `pneuomnia`, `cough`, `sneezing`, `muscleaches`, `bronchitis`, `tuberculosis`, `wheezing`, `bonepain`, `excessbodyweight`, `blurredvision`, `memoryproblems`, `disturbedsleep`, `depression`, `nightsweats`, `abdominalpain`) VALUES
('dehydration', 'Blood Test, Urinalysis', 'pediatrician', '', '', 'yes', 'yes', 'yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('cirrhosis', 'CT,MRI', 'hepatologist', 'yes', 'yes', '', 'yes', 'yes', 'yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('heart/coronary artery disease', 'ECG,EKG', 'cardiologist', '', '', '', '', '', '', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', 'yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('stroke', 'CT, MRI', 'neurologist', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('respiratory infections', 'Throat Swab, Lateral neck X-rays', 'pulmonologist', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', 'yes', '', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', '', '', '', '', '', '', ''),
('obstructive pulmonary disease', 'Throat Swab, Lateral neck X-rays', 'pulmonologist', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('chronic obstructive pulmonary disease', 'Throat Swab, Lateral neck X-rays', 'pulmonologist', '', 'yes', '', '', '', '', '', 'yes', '', 'yes', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '', 'yes', '', '', '', '', '', '', '', ''),
('trachea and lung cancer', 'Throat Swab, Lateral neck X-rays', 'oncologist', 'yes', 'yes', '', '', '', '', '', 'yes', '', 'yes', '', '', '', '', '', '', '', 'yes', '', '', '', 'yes', '', '', '', '', 'yes', 'yes', '', '', '', '', '', '', ''),
('Diabetes', 'Blood test', 'diabetologist', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', 'yes', '', '', '', '', ''),
('Alzheimer', 'through symptoms', 'neurologist', '', 'yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', '', '', '', '', 'yes', 'yes', 'yes', '', ''),
('tuberculosis', 'Mantoux tuberculin skin test', 'pulmonologist', 'yes', 'yes', '', 'yes', '', '', '', '', '', 'yes', '', '', '', '', '', '', '', 'yes', '', '', '', 'yes', '', '', '', '', '', '', '', '', '', '', '', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(6) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `weight` int(3) NOT NULL,
  `bg` varchar(3) NOT NULL,
  `gender` set('female','male','other','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `age`, `weight`, `bg`, `gender`) VALUES
(1, 'John', '', 'Doe', 24, 56, '', ''),
(2, 'johna', '', 'hello', 34, 78, '', ''),
(3, 'johna', '', 'hello', 34, 78, '', ''),
(4, 'laiyaan', '', 'namanchatu', 340, 722222222, '', ''),
(5, 'ss', '', 'rhgjd', 23, 34, 'as', ''),
(6, 'dj', '', 'rtr', 44, 45, 'gh', ''),
(7, 'ggf', '', '', 45, 45, 'fgf', ''),
(8, 'vikas', '', 'chutiya', 23, 5, 'sss', 'female'),
(9, 'shivam', '', 'qwerty', 16, 12, 'ab', 'male'),
(10, 'shivam', 'sg@gmail', '12345', 23, 45, 'ab+', 'male'),
(11, 'sa', 'ca@j', '123', 5, 55, 'AB', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_name`
--

CREATE TABLE `user_name` (
  `user_id` int(20) NOT NULL,
  `title` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_name`
--

INSERT INTO `user_name` (`user_id`, `title`) VALUES
(1, 'hello'),
(2, 'helo'),
(3, 'hola'),
(4, 'hi'),
(5, 'bye'),
(6, 'hee'),
(7, 'angina'),
(8, 'chest pain'),
(9, 'palpiations'),
(10, 'breathelessness'),
(11, 'high cholesterol'),
(12, 'high blood pressure'),
(13, 'sudden numbness'),
(14, 'diabetes'),
(15, 'paralysis'),
(16, 'sudden loss of vision'),
(17, 'difficulty swallowing'),
(18, 'headache'),
(19, 'sluggish speech'),
(20, 'influenza'),
(21, 'pneumonia'),
(22, 'cough'),
(23, 'sneezing'),
(24, 'muscle aches'),
(25, 'fever'),
(26, 'bronchitis'),
(27, 'tuberculosis'),
(28, 'weight loss'),
(29, 'wheezing'),
(30, 'bone pain'),
(31, 'excess body weight'),
(32, 'blurred vision'),
(33, 'memory problems'),
(34, 'disturbed sleep'),
(35, 'depression'),
(36, 'thirsty'),
(37, 'tired'),
(38, 'frequent urinating'),
(39, 'night sweats'),
(40, 'abdominal pains'),
(41, 'vomiting');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user_name`
--
ALTER TABLE `user_name`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_name`
--
ALTER TABLE `user_name`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
