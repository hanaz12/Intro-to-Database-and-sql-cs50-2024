CREATE TABLE Customers (
    "id" INT,
    "first_name" TEXT,
    "last_name" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE Ingredients (
    "id" INT,
    "name" TEXT NOT NULL,
    "price" NUMBER NOT NULL,
    PRIMARY KEY ("id")
);

CREATE TABLE Donuts (
    "id" INT,
    "ingredient_id" INT,
    "name" TEXT NOT NULL,
    "price" NUMBER NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES Ingredients ("id")
);

CREATE TABLE Orders (
    "id" INT,
    "donut_id" INT,
    "customer_id" INT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donut_id") REFERENCES Donuts ("id"),
    FOREIGN KEY ("customer_id") REFERENCES Customers ("id")
);
