/**
 * Normalize the database
 *
 * Create new tables and define their relationships based on the schema in `normalization.png`
 */
create table gender 
(
id serial primary key,
name char(1) not null
);
create table race 
(
id serial primary key,
name varchar(255) not null
);
create table category 
(
id serial primary key,
name varchar(255) not null
);
create table tolkien_character 
(
	id serial primary key,
	name varchar(255) not null,
		
	gender_id int not null, 
	race_id int not null,
	category_id int not null,
	foreign key (gender_id) references gender(id),
	foreign key (race_id) references race(id),
	foreign key (category_id) references category(id)
);
  

/**
 * Populate the new tables
 *
 * Populate the new tables with data from the `middle_earth_character` table.
 * Use transaction(s).
 */


/**
 * Refactor the database
 *
 * Rename the `middle_earth_character` table to `deprecated_middle_earth_character`.
 * Create a view named `middle_earth_character` with the original structure of the data.
 * Run the query in the `app.pgsql` file and check the results.
 */


/**
 * Delete legacy data
 *
 * Delete the `deprecated_middle_earth_character` table.
 */
