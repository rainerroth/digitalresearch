CREATE TABLE people (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	born DATE
);

CREATE TABLE plays (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT,
	written DATE,
	author INTEGER REFERENCES people(id),
	genre TEXT
);

CREATE TABLE acts (
	act INTEGER,
	play INTEGER REFERENCES plays(id)
);

CREATE TABLE scenes (
	scene TEXT,
	play INTEGER REFERENCES plays(id)
);

CREATE TABLE lines (
	line TEXT,
	play INTEGER REFERENCES plays(id)
);

CREATE TABLE characters (
	role TEXT # THE TEXT OF THE SPECIFIC CHARACTER,
	character INTEGER REFERENCES people(id)
);

