## User Stories


As a user
So that I can go to websites I regularly visit
I want to see a list of bookmarks

As a user
So that I can quickly navigate to websites I regularly visit
I want to add a website to my list of bookmarks


## domain model Snap

![Domain model snap for user story](https://github.com/sibamunsanje/bookmark_manager/blob/master/Image%20from%20iOS.jpg)


## Set up Instructions for bookmark_manager database

#Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql


## Set up instructions for bookmark_manager_test database
Create the database using the psql command CREATE DATABASE bookmark_manager_test;
Use the SQL query saved in db/migrations/01_create_bookmarks_table.sql to create a bookmarks table.
