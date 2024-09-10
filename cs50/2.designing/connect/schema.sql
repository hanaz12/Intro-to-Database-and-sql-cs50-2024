CREATE TABLE Passengers(
"id" INTEGER,
"first_name" TEXT NOT NULL,
"last_name" TEXT NOT NULL,
"age" INT ,
 PRIMARY KEY("id")
);

CREATE TABLE Flights(
"id" ,
"airline_id",
"from" TEXT NOT NULL,
"destenation" TEXT NOT NULL,
"depature_date"  TEXT DEFAULT CURRENT_TIMESTAMP,
"arrival_date" TEXT DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY ("id"),
FOREIGN KEY ("airline_id") REFERENCES Airlines ("id")
);


CREATE TABLE Check_Ins(
"id",
"rider_id",
"flight_id",
"dateAndTime" TEXT DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY("id"),
FOREIGN KEY ("rider_id") REFERENCES Passengers ("id"),
FOREIGN KEY ("flight_id") REFERENCES Flights ("id")
);


CREATE TABLE Airlines (
"id",
"name" TEXT NOT NULL,
"concourse" TEXT CHECK ("concourse" IN ("A" , "B" , "C" , "D" , "E" , "F")),
PRIMARY KEY ("id")
);
