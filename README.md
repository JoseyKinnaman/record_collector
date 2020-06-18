# Record Organizer

#### Epicodus: Ruby Group Project


#### Josey Kinnaman, Chee Murakami, Zinfira Safargalieva, Allison Mackey, Ryan Duff 

## Description
This project is 

## Setup/Installation Requirements
Users will need to install Ruby, Rails, psql and Postgres.
[Click here](https://www.ruby-lang.org/en/documentation/installation/) for instructions on installing Ruby.
[Click here](https://dataschool.com/learn-sql/how-to-start-a-postgresql-server-on-mac-os-x/) for instructions on installing psql and Postgres.
After installing the above software, users will need to clone this project from my [github repository](https://github.com/JoseyKinnaman/record_collector). Once cloned, use the command line to navigate to the project folder and install all necessary Ruby Gems with: 
* _$ bundle install_
In the command line, type the following commands which will create the necessary database and launch a local server sso that you can access the application in a browser window.
* _$ rake db:create 
* _$ rake db:migrate
* _$ rake db:test:prepare
* _$ rails s
Now open a web browser and enter localhost:3000 in the address bar to view the project.


## Specifications

| Behavior       | Input         | Output  |

## User Stories Employed to Determine Behavior Driven Development Strategy

* As an user I want to be able to store a list of all of the vinyl records in my collection.
* As a user I want to be able to search for an album by name, artist, genre, year and then select an album from a list and add it to my collection.
* I want to be able to add and delete records and the information that is stored with them.
* I want to be able to see my collection organized in different ways, such as by genre, album name, artist name and recently added. 
* I want to be able to display a virtual record shelf showing pictures of my albums. 

## Stretch Goals
* _I want to be able to search my collection_
* _message board_
* _log in through discogs_
* _user want list_
* _I want to be able to see the total value of my collection and the value of each album I own._
* _phone capabilities_
* _user name in Devise and displayed in 'My collection'.


## TO DO LIST
  SEARCH.html.erb
  - MERGE √
  - adjust the api call for only vinyl (RYAN & ALLISON)
  - empty 'photo' boxes are showing up, with no albums? (RYAN & ALLISON)
  - images need to be situated properly (unformatted, copy from front_end formatting?)
  - my collection page formatting (RYAN, ALLISON & JOZY)
  - remove username from schema (JOZY)
  - add bootstrap for buttons (JOZY)

  - nav bar, moving signed in & sign-out to the right hand side (CHEE & ZINFIRA)
  - nav bar, right side doesn't have an end? (CHEE & ZINFIRA)
  - add sort by options on search page? (CHEE & ZINFIRA)


  - work on search function for searching a collection -> gem "pg_search" 

@ 1:00 pm --> START WORKING ON DEMO PAGE

## TO DO BEFORE DEMO @ 3:00pm
- create account for showcasing our project with visually appealing records displayed on 'my collection' page.   
- deploy to Heroku 
- create outline script for demo



## Technologies Used
* _Ruby_
* _Rails_
* _ActiveRecord_
* _Faker_
* _Rspec_
* _Pry_
* _Capybara_
* _Postgres_
* _Markdown_
* _git & gitHub_

## Known Bugs

### License

**The MIT license**

Copyright (c) 2020 **Josey Kinnaman, Chisato, Zinfira Safargalieva, Allison Mackey, Ryan Duff**
