CREATE TABLE Genre (
idg INTEGER PRIMARY KEY,
gname TEXT
);

CREATE TABLE Movie (
title TEXT,
yearofr DATE,
lengthofm TEXT,
plot TEXT,
idpc TEXT,
PRIMARY KEY (title, yearofr)
);

CREATE TABLE MovGenre (
title TEXT PRIMARY KEY,
yearofr DATE,
idg INTEGER,
access_date DATE,
CONSTRAINT movie_is FOREIGN KEY (title, yearofr)
REFERENCES Movie (title, yearofr),
FOREIGN KEY (idg) REFERENCES
Genre (idg)
);

CREATE TABLE Rolesin (
rolenum INTEGER PRIMARY KEY,
therole TEXT
);

CREATE TABLE Participate (
pname TEXT,
pbdate DATE,
title TEXT,
yearofr DATE,
rolenum INTEGER,
CONSTRAINT in_movie FOREIGN KEY (title, yearofr)
REFERENCES Movie (title, yearofr),
CONSTRAINT doin FOREIGN KEY (rolenum)
REFERENCES Rolesin (rolenum),
PRIMARY KEY (pname, pbdate)
);
