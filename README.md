# International-Countries-Database
This is my Globe Database Project. It receives, updates, and stores data about international countries around the world. 
INSTALLATION INSTRUCTIONS
1. This database uses the RDBMS MySQL. Please use this link for information in regards to setting up MySQL: 
https://dev.mysql.com/doc/mysql-getting-started/en/.

2. The python connection file connects to the MySQL database via the use of the "MySQL Connector". Please use this link for information in setting up the driver: https://www.w3schools.com/python/python_mysql_getstarted.asp.

3. Once MySQL and the MySQL Connector are set up, you can run the schema ("globe_schema.sql") which will create the database. After that, run the insertion queries file ("globe_insertionQueries.sql") which will insert the necessary default data for the database to run properly, along with some data samples to populate the database.

4. After the database is created and the insertions are completed, you can run the pythonConnection file to utilize the database. The program will prompt you to enter your MySQL username and password in order to connect. Once that is done, you will be given a set of functions that you can perform

FUNCTIONS
1. Add a new Country: This function allows you to enter a new country in the database. You will be prompted to enter the proper information about this country and after that is completed, the necessary insertions will be made and the new country will be added into the database.

2. Update information on a Country: This function allows you to update any information on an already-existing country in the database. You can update it's general information (total population and dominant language), government(capital location, leadership, and leadership's political party), economy(GDP, dominant import, and dominant export), and alliances.

3. Look up information on a Country: This function allows you to find all information regarding an already-existing country in the database. It will list general information along with information in regards to the country's government, economy, and alliances.
