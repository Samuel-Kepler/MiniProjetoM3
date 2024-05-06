CREATE TABLE `Users` (
  `ID` int PRIMARY KEY,
  `username` varchar(255),
  `age` char,
  `userGender` varchar(255)
);

CREATE TABLE `Sleep` (
  `ID` int PRIMARY KEY,
  `userID` int,
  `duration` datetime,
  `timestamp` datetime,
  `sleepQuality` int
);

CREATE TABLE `Stress` (
  `ID` int PRIMARY KEY,
  `userID` int,
  `timestamp` datetime,
  `stressLevel` int
);

ALTER TABLE `Stress` ADD FOREIGN KEY (`userID`) REFERENCES `Users` (`ID`);

ALTER TABLE `Sleep` ADD FOREIGN KEY (`userID`) REFERENCES `Users` (`ID`);
