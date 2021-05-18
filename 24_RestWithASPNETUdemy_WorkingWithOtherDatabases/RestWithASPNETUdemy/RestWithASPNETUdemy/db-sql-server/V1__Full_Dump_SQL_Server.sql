CREATE DATABASE rest_with_asp_net_udemy
GO

USE [rest_with_asp_net_udemy]
GO

CREATE TABLE dbo.books (
  [id] int NOT NULL IDENTITY,
  [author] varchar(max),
  [launch_date] datetime2(6) NOT NULL,
  [price] decimal(38,2) NOT NULL,
  [title] varchar(max),
  PRIMARY KEY ([id])
)
GO

INSERT INTO dbo.books ([author], [launch_date], [price], [title]) VALUES
	('Ralph Johnson, Erich Gamma, John Vlissides e Richard Helm', '2017-11-29 15:15:13.636000', 45.00, 'Design Patterns'),
	('Robert C. Martin', '2009-01-10 00:00:00.000000', 77.00, 'Clean Code'),
	('Crockford', '2017-11-07 15:09:01.674000', 67.00, 'JavaScript'),
	('Steve McConnell', '2017-11-07 00:00:00.000000', 58.00, 'Code complete'),
	('Eric Freeman, Elisabeth Freeman, Kathy Sierra, Bert Bates', '2017-11-07 00:00:00.000000', 110.00, 'Head First Design Patterns'),
	('Eric Evans', '2017-11-07 15:09:01.674000', 92.00, 'Domain Driven Design'),
	('Brian Goetz e Tim Peierls', '2017-11-07 15:09:01.674000', 80.00, 'Java Concurrency in Practice'),
	('Susan Cain', '2017-11-07 15:09:01.674000', 123.00, 'O poder dos quietos'),
	('Roger S. Pressman', '2017-11-07 15:09:01.674000', 56.00, 'Engenharia de Software: uma abordagem profissional'),
	('Aguinaldo Aragon Fernandes e Vladimir Ferraz de Abreu', '2017-11-07 15:09:01.674000', 54.00, 'Implantando a governança de TI'),
	('Kyle Banker', '2011-11-29 13:50:05.878000', 30.50, 'MongoDB in Action'),
	('Nigel Poulton', '2017-07-06 00:00:00.000000', 55.00, 'Docker Deep Dive'),
	('Nigel Poulton', '2020-11-08 00:00:00.000000', 113.00, 'Docker Deep Dive'),
	('Michael C. Feathers', '2017-11-29 00:00:00.000000', 491.27, 'Working effectively with legacy code')
GO

CREATE TABLE dbo.person (
  [id] bigint NOT NULL IDENTITY,
  [first_name] varchar(80) NOT NULL,
  [last_name] varchar(80) NOT NULL,
  [address] varchar(100) NOT NULL,
  [gender] varchar(6) NOT NULL,
  [enabled] BIT NOT NULL DEFAULT 'TRUE',
  PRIMARY KEY ([id])
)
GO


INSERT INTO dbo.person ([first_name], [last_name], [address], [gender], [enabled]) VALUES
	('Ayrton', 'Senna', 'São Paulo - Brasil', 'Male', 'TRUE'),
	('Leonardo', 'da Vinci', 'Anchiano - Italy', 'Male', 'TRUE'),
	('Mahatma', 'Gandhi', 'Porbandar - India', 'Male', 'FALSE'),
	('Mohamed Ali', 'Gandhi', 'Kentucky - USA', 'Male', 'TRUE'),
	('Nelson', 'Mandela', 'Mvezo - South Africa', 'Male', 'TRUE'),
	('Jedd', 'Klossmann', '5 Pearson Pass', 'Male', 'FALSE'),
	('Dolorita', 'Quickenden', '38 Morning Park', 'Female', 'FALSE'),
	('Dimitri', 'Arney', '8 Esch Hill', 'Male', 'FALSE'),
	('Emmery', 'Meadowcroft', '2068 Schmedeman Circle', 'Male', 'FALSE'),
	('Frasier', 'Sline', '7 Redwing Point', 'Male', 'FALSE'),
	('Tarrance', 'Van de Vlies', '27858 Haas Pass', 'Male', 'FALSE'),
	('Perkin', 'Shaughnessy', '6 Marcy Crossing', 'Male', 'TRUE'),
	('Micheline', 'Doghesty', '8869 Scofield Avenue', 'Female', 'FALSE'),
	('Adelbert', 'Siburn', '95988 Melrose Point', 'Male', 'FALSE'),
	('Norene', 'Gatherell', '84065 Merry Court', 'Female', 'TRUE'),
	('Minta', 'Gotcliff', '937 Starling Drive', 'Female', 'FALSE'),
	('Elita', 'Sherrum', '92 Golf Point', 'Female', 'TRUE'),
	('Gris', 'Macallam', '2288 Fuller Terrace', 'Male', 'FALSE'),
	('Silva', 'Piris', '70 Dwight Point', 'Female', 'TRUE'),
	('Karilynn', 'Pesterfield', '75 Lerdahl Court', 'Female', 'FALSE'),
	('Brynn', 'Ramard', '2 Little Fleur Hill', 'Female', 'FALSE'),
	('Nanete', 'Boler', '646 Maryland Way', 'Female', 'FALSE'),
	('Dane', 'Jarvis', '120 8th Place', 'Male', 'TRUE'),
	('Nyssa', 'Pauletti', '426 Eagle Crest Lane', 'Female', 'FALSE'),
	('Aile', 'Kynastone', '62 Mayfield Place', 'Female', 'TRUE'),
	('Carmella', 'Grelik', '6294 Michigan Pass', 'Female', 'TRUE'),
	('Marty', 'Perris', '484 Schlimgen Center', 'Male', 'FALSE'),
	('Michal', 'Hackelton', '12 Muir Center', 'Male', 'TRUE'),
	('Mortimer', 'Hoyland', '24129 Surrey Parkway', 'Male', 'TRUE'),
	('Cathee', 'Pagitt', '015 Brickson Park Alley', 'Female', 'TRUE'),
	('Emogene', 'Dominici', '304 Eagan Center', 'Female', 'TRUE'),
	('Leora', 'Brookshaw', '39093 Scott Lane', 'Female', 'TRUE'),
	('Konrad', 'Weldon', '00 Old Gate Point', 'Male', 'TRUE'),
	('Peria', 'Fassan', '03009 Waywood Road', 'Female', 'FALSE'),
	('Anderson', 'Allport', '4 Colorado Plaza', 'Male', 'TRUE'),
	('Job', 'Philpott', '19 Delaware Alley', 'Male', 'TRUE'),
	('Adrea', 'Hellwich', '408 Talmadge Way', 'Female', 'TRUE'),
	('Lydon', 'Fenelow', '325 Muir Plaza', 'Male', 'FALSE'),
	('Reagan', 'Dinkin', '0275 Colorado Plaza', 'Male', 'TRUE'),
	('Lazar', 'Boniface', '94130 Basil Center', 'Male', 'TRUE'),
	('Bette', 'Eilert', '128 Vidon Street', 'Female', 'TRUE'),
	('Fabiano', 'Tansly', '314 Melody Park', 'Male', 'TRUE'),
	('Mommy', 'Mengo', '2 Parkside Center', 'Female', 'TRUE'),
	('Bartholomeo', 'Cockerill', '0 Sage Park', 'Male', 'TRUE'),
	('Filippo', 'MacInnes', '80 Waubesa Avenue', 'Male', 'TRUE'),
	('Kingston', 'Botler', '0585 Bultman Trail', 'Male', 'FALSE'),
	('Ritchie', 'McReedy', '7644 Mcbride Road', 'Male', 'TRUE'),
	('Xever', 'Horick', '076 Bobwhite Point', 'Male', 'FALSE'),
	('Kyrstin', 'Pyrke', '5 Columbus Lane', 'Female', 'FALSE'),
	('Filia', 'Baldi', '0749 Mosinee Way', 'Female', 'FALSE'),
	('Adriano', 'Marcinkus', '46 Shasta Court', 'Male', 'FALSE'),
	('Andree', 'Pipes', '8 Randy Crossing', 'Female', 'TRUE'),
	('Atlanta', 'Very', '52 Spaight Place', 'Female', 'FALSE'),
	('Earl', 'Drewett', '8693 Scofield Trail', 'Male', 'TRUE'),
	('Will', 'Biggins', '60 Manufacturers Hill', 'Male', 'FALSE'),
	('Eveline', 'Hughes', '2 Granby Street', 'Female', 'TRUE'),
	('Bambi', 'Petts', '511 Bellgrove Point', 'Female', 'TRUE'),
	('Ellissa', 'Littlekit', '80769 Superior Plaza', 'Female', 'TRUE'),
	('Tann', 'Sykes', '175 Westend Trail', 'Male', 'FALSE'),
	('Claudia', 'Semple', '23 Spenser Road', 'Female', 'TRUE'),
	('Albert', 'Kwietak', '0 Sycamore Point', 'Male', 'TRUE'),
	('Hilda', 'Makin', '76549 Kensington Circle', 'Female', 'TRUE'),
	('Gavin', 'Rossant', '0319 Muir Park', 'Male', 'TRUE'),
	('Delaney', 'Reeveley', '91 Glacier Hill Hill', 'Male', 'TRUE'),
	('Donaugh', 'Piddlesden', '683 Arapahoe Avenue', 'Male', 'TRUE'),
	('Gilbertine', 'Alessandrini', '22771 1st Trail', 'Female', 'TRUE'),
	('Arnaldo', 'Nelm', '356 Service Center', 'Male', 'TRUE'),
	('Daisi', 'Toombs', '10851 Crownhardt Park', 'Female', 'TRUE'),
	('Leah', 'Drinkale', '0 Elmside Park', 'Female', 'FALSE'),
	('Jacquenetta', 'Gretton', '24 Paget Junction', 'Female', 'FALSE'),
	('Melisa', 'Rottger', '9992 Calypso Street', 'Female', 'TRUE'),
	('Yevette', 'Mapston', '027 Gateway Circle', 'Female', 'FALSE'),
	('Delphinia', 'Spurgin', '712 Kedzie Center', 'Female', 'TRUE'),
	('Garry', 'Jeromson', '781 Michigan Crossing', 'Male', 'TRUE'),
	('Harri', 'Godley', '4483 Brentwood Junction', 'Female', 'TRUE'),
	('James', 'Jobern', '57649 Claremont Point', 'Male', 'TRUE'),
	('Rayna', 'Sale', '040 Carberry Park', 'Female', 'TRUE'),
	('Ernie', 'Brauner', '92630 Montana Place', 'Male', 'TRUE'),
	('Cindra', 'Alcorn', '957 Carpenter Pass', 'Female', 'FALSE'),
	('Cami', 'Buessen', '4980 Oak Terrace', 'Female', 'TRUE'),
	('Tully', 'Rounsefell', '46 Lighthouse Bay Plaza', 'Male', 'TRUE'),
	('Ede', 'Van Waadenburg', '4045 Reindahl Point', 'Female', 'TRUE'),
	('Isiahi', 'Spindler', '2690 Gale Trail', 'Male', 'FALSE'),
	('Jerrilee', 'Fermoy', '92 Nevada Circle', 'Female', 'FALSE'),
	('Bessie', 'Nardi', '8472 Anderson Road', 'Female', 'TRUE'),
	('Emeline', 'Wasselin', '1 Knutson Avenue', 'Female', 'FALSE'),
	('Cassie', 'Ende', '98295 Straubel Junction', 'Male', 'TRUE'),
	('Alexandros', 'Press', '234 Jana Road', 'Male', 'TRUE'),
	('Lisle', 'Langrick', '8226 Everett Circle', 'Male', 'TRUE'),
	('Corbet', 'Parham', '9 Swallow Park', 'Male', 'FALSE'),
	('Willabella', 'Ricardon', '58125 Westport Way', 'Female', 'FALSE'),
	('Connie', 'Shutler', '99 Holmberg Hill', 'Male', 'FALSE'),
	('Pooh', 'Weiser', '236 Eastwood Point', 'Male', 'FALSE'),
	('Patricia', 'Gerhold', '373 Continental Junction', 'Female', 'TRUE'),
	('Yorgos', 'Lampett', '85471 Memorial Lane', 'Male', 'FALSE'),
	('Leonidas', 'Roke', '17 Talmadge Alley', 'Male', 'FALSE'),
	('Noak', 'Giabucci', '93193 Lunder Place', 'Male', 'FALSE'),
	('Kin', 'MacVean', '55 Declaration Point', 'Male', 'FALSE'),
	('Nelly', 'Ondricek', '36502 Kim Avenue', 'Female', 'FALSE'),
	('Julie', 'Trevers', '540 Pennsylvania Street', 'Male', 'TRUE')
GO

CREATE TABLE dbo.users (
  [id] int NOT NULL IDENTITY,
  [user_name] varchar(50) NOT NULL DEFAULT '0',
  [password] varchar(130) NOT NULL DEFAULT '0',
  [full_name] varchar(120) NOT NULL,
  [refresh_token] varchar(500) DEFAULT '0',
  [refresh_token_expiry_time] datetime2(0) DEFAULT NULL,
  PRIMARY KEY ([id]),
  CONSTRAINT [user_name] UNIQUE  ([user_name])
)
GO


INSERT INTO dbo.users ([user_name], [password], [full_name], [refresh_token], [refresh_token_expiry_time]) VALUES
	('leandro', '24-0B-E5-18-FA-BD-27-24-DD-B6-F0-4E-EB-1D-A5-96-74-48-D7-E8-31-C0-8C-8F-A8-22-80-9F-74-C7-20-A9', 'LEANDRO DA COSTA GONCALVES', 'F3UV/scxdp134LBEo0Dg6OX0c2lgIgAYSpJ05gSQg/w=', '2020-11-16 12:14:08')
