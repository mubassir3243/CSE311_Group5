

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";





CREATE TABLE `movielist` (
  `movieId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Genre` varchar(25) DEFAULT NULL,
  `Director` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imdb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `movielist` (`movieId`, `Name`, `Genre`, `Director`, `Description`, `image`, `imdb`) VALUES
(1, 'Batman Begins', 'Action', 'Christopher Nolan', 'A young Bruce Wayne (Christian Bale) travels to the Far East, where he''s trained in the martial arts by Henri Ducard (Liam Neeson), a member of the mysterious League of Shadows. ', 'batman.jpg', '9.5'),
(2, 'Spider-Man: Homecoming (2017)', 'Adventure', 'Jon Watts', 'Thrilled by his experience with the Avengers, young Peter Parker returns home to live with his Aunt May. Under the watchful eye of mentor Tony Stark, Parker starts to embrace his newfound identity as Spider-Man.', 'spiderman.jpg', '8.5'),
(3, 'Fight Club', 'Action', 'David Fincher', 'A depressed man (Edward Norton) suffering from insomnia meets a strange soap salesman named Tyler Durden (Brad Pitt) and soon finds himself living in his squalid house after his perfect apartment is destroyed. The two bored men form an underground club wi', 'fightClub.jpg', '8.8'),
(4, 'Gladiator', 'Action', 'Ridley Scott', 'Commodus (Joaquin Phoenix) takes power and strips rank from Maximus (Russell Crowe), one of the favored generals of his predecessor and father, Emperor Marcus Aurelius, the great stoical philosopher. Maximus is then relegated to fighting to the death in t', 'gladiator.jpg', '8.5'),
(5, 'Star Wars', 'Adventure', 'George Lucas', 'Star Wars is an American epic space opera franchise, centered on a film series created by George Lucas. It depicts the adventures of various characters "a long time ago in a galaxy far, far away"', 'starwars.png', '9'),
(6, 'Despicable Me 3', 'Comedy', 'Pierre Coffin, Kyle Balda', 'The mischievous Minions hope that Gru will return to a life of crime after the new boss of the Anti-Villain League fires him. Instead, Gru decides to remain retired and travel to Freedonia to meet his long-lost twin brother for the first time. The reunite', 'despicableme.jpg', '6.4');



CREATE TABLE `showorder` (
  `showOrderId` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `timeslot` varchar(255) NOT NULL,
  `theater` varchar(255) NOT NULL,
  `movieName` varchar(255) NOT NULL,
  `seat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `showorder` (`showOrderId`, `date`, `timeslot`, `theater`, `movieName`, `seat`) VALUES
(1, '2021-07-30', '11.00', 'Basundhara Cineplex', 'Batman Begins', '49'),
(2, '2021-07-31', '5.00', 'BlockBluster', 'Gladiator', '49'),
(3, '2021-08-01', '2.00', 'BlockBluster', 'Spider-Man: Homecoming (2017)', '48'),
(4, '2021-08-16', '8.00', 'Balaka Cineplex', 'Batman Begins', '49'),
(5, '2021-08-23', '11.00', 'Basundhara Cineplex', 'Batman Begins', '50'),
(6, '2021-08-17', '2.00', 'Basundhara Cineplex', 'Batman Begins', '48'),
(7, '2021-11-16', '11.00', 'Shamoly Cineplex', 'Batman Begins', '50');




CREATE TABLE `theater` (
  `theaterId` int(11) NOT NULL,
  `theaterName` varchar(255) DEFAULT NULL,
  `seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `theater` (`theaterId`, `theaterName`, `seat`) VALUES
(1, 'Basundhara Cineplex', 50),
(2, 'BlockBluster', 45),
(3, 'Balaka Cineplex', 60),
(4, 'Shamoly Cineplex', 70);



CREATE TABLE `timeslot` (
  `timeslotId` int(11) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `timeslot` (`timeslotId`, `time`) VALUES
(1, '11.00'),
(2, '2.00'),
(3, '5.00'),
(4, '8.00'),
(5, '9.00');


CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `user` (`userId`, `userName`, `password`, `status`) VALUES
(1, 'admin', 'admin', 101),
(3, 'user', 'user', 202);


ALTER TABLE `movielist`
  ADD PRIMARY KEY (`movieId`);


ALTER TABLE `showorder`
  ADD PRIMARY KEY (`showOrderId`);


ALTER TABLE `theater`
  ADD PRIMARY KEY (`theaterId`);


ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`timeslotId`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);


ALTER TABLE `movielist`
  MODIFY `movieId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `showorder`
  MODIFY `showOrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `theater`
  MODIFY `theaterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `timeslot`
  MODIFY `timeslotId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
