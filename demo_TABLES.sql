-- create database demo;

-- create tables  --
/**
create table table_name(

column_name and datatype optional constraint,
column_name and datatype optional constraint,
column_name and datatype optional constraint,
.......
constraint contrainst_name contrainst_type(column_name)
); **/

use demo;

create table Human(
	humanID		int		Not null,
    name		varChar(30)		Not null,
    age		int		Not null,
    gender		varchar(1)		Not null,
    bloodType		varChar(2)		Not null,
    Genotype		varChar(3)		Not null,
    -- define the primary key column --
    constraint human_PK		Primary key(humanID)
);


-- Game table
create table Games(
	`gameID`		int		Not null,
	`GameName`	varChar(30)		Not null,
    `price`		numeric(4,2)		Not null,
    `quantity`		int		Not null,
    Location	varChar(25)		Not null,
    constraint Game_PK	Primary key(gameID)
);


-- Game purchase table --
create table GamePurchase(
	humanID		int		Not null,
    `gameID`		int		Not null,
    -- Surrogate column --
		`orderDate`	timestamp	NOT NULL DEFAULT CURRENT_TIMESTAMP,
        constraint		Order_PK	Primary key(humanID, gameID),
        constraint		human_fk	foreign key(humanID)
									references Human(humanID),
		constraint games_fk			foreign key(gameID)
									references	Games(gameID)
);