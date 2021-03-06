#Create User table
CREATE TABLE `User` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL,
	`points`	REAL,
	`level`	INTEGER,
	`experience`	TEXT,
	`disable`	INTEGER
);



#Create Data table (Open data table)
CREATE TABLE `Data` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	TEXT NOT NULL,
	`description`	TEXT,
	`question`	TEXT,
	`opt1`	TEXT,
	`opt2`	TEXT,
	`opt3`	TEXT,
	`answer`	TEXT,
	`img`	TEXT,
	`coord0`	REAL,
	`coord1`	REAL
);



#Insert data into Data table
INSERT INTO Data (id, name, description, question, opt1, opt2, opt3, answer, img, coord0, coord1)
VALUES 	(1, "Duomo", "The duomo has a museum. More info: http://www.musei-altoadige.it/it/musei.asp?muspo_id=1043","When was the Duomo completed?", "1517", "1700", "1245", 1, "https://upload.wikimedia.org/wikipedia/commons/5/56/Dom_Maria_Himmelfahrt_Bozen_2015.jpg", 46.4969203, 11.3527334),
		(2, "Walther square", "Walther von der Vogelweide (c. 1170 – c. 1230) was a Minnesänger, who composed and performed love-songs and political songs (Sprüche) in Middle High German", "Write which instruments the statue holds:", "", "", "", "violin", "https://upload.wikimedia.org/wikipedia/commons/3/3d/Waltherdenkmal_Bozen.jpg", 46.4980965, 11.3545627),
		(3, "Grano square", "This is the oldest urban centre of the Episcopal Town 1277", "Which is the name of the building in the picture?", "Casa della Pesa", "Casa del grano", "Casa del Walther", 1, "https://upload.wikimedia.org/wikipedia/commons/f/f3/Bozen-Bolzano_%E2%80%94_Waaghaus_%28Frontansicht%29.jpg",46.4991984,11.3551542),
		(4, "South Tyrol Museum of Natural History", "More info: www.museonatura.it", "Enter and visit the museum. Which is the topic of the special exhibition?", "Spiders", "Horses", "Cow", 1,"",46.499815, 11.3521059),
		(5, "South Tyrol Museum of Archaeology", "More info: www.iceman.it", "Catch the mummy!!", "", "", "", "","david-grandmougin-123135.jpg", 46.4991282, 11.350974 );