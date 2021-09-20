# SQL-Homework
REAMDE 

Did the prework, created the repository and cloned it into my local, created the EmployeeSQL folder locally and added 6 csv’s and pushed to Github. I didn’t like the ERD that was linked with these instructions, and so after working with that for a while I decided it was more fruitful to at least get the data into pgAdmin.

I created Employee_db and then went about inserting the csv’s. I had some trouble with that, to put it mildly. I knew from the instructions that I was going to have to create a primary key with each of the tables, as well as from class. So I dutifully included it in the first line of each ‘create,’ but little did I know that this would cause issues with importing the csv’s because if the csv table has two lines and the import feature of pgAdmin thinks that it has 3 (because the primary key is the first values) it doesn’t know how to insert 2 columns into 3 columns. So what I had to do was insert some of the values of the table, say like two lines, tell it to print those values and then the import/export tool would magically have the features that were needed. You can go over to the columns tab, and specify which items are to be inserted and which are not null values, and then the import feature would run. 

