# sql-project

Project of a relational database carried out using MySQL. The project includes entity relationship model (ERM) of the database done in MySQL Workbench along with additional MySQL scripts. The aim of the project was to learn the aspects of database normalization and usage of foreign keys. It was also a practice exercise to learn MySQL and build databases.

### Database Structure

The database includes information about hard rock/metal bands - songs, albums they released, band members and what equipment band members use.

Key tables in the database:

**song**: includes information such as song title, number in album, duration in seconds, link to youtube and link to lyrics

**album**: includes album title, number of songs, year released, average price

**band**: name, number of members, number of albums, country of origin, year established and year disbanded

**musician**: first name, last name, country of origin, city of origin, date of birth and date of death

**instrument**: manufacturer, model, year produced, price, description

The database also includes some additional tables as shown in the ERM. For instance, instrument_type, genre and join tables for many to many relationships.

Project includes some dummy data (see insert query in scripts).

### Built With

MySQL, MySQL Workbench

### Authors

Radoslaw Soltan

### License

This project is under the MIT License - see the LICENSE.md file for details.

### References

Useful youtube playlist about database normalization by [Studytonight](https://www.youtube.com/playlist?list=PLLGlmW7jT-nTr1ory9o2MgsOmmx2w8FB3).