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
* As a user I want to be able to search for an album by name or artist, then select an album from a list and add it to my collection.
* I want to be able to add, delete, update records and the information that is stored with them.
* I want to be able to see my collection organized in different ways, such as by genre, alphabetical, release date, album name, artist name etc.
* I want to be able to search my collection
* I want to be able to display a virtual record shelf showing pictures of my albums. 

Request Token URL    https://api.discogs.com/oauth/request_token
Authorize URL    https://www.discogs.com/oauth/authorize
Access Token URL    https://api.discogs.com/oauth/access_token

## todo list
<!-- back end -->
* adjust the api call for only vinyl?
* get username into users table (or take out)
* admin
* homepage -> add featured album section & add user authentication for pages


## Stretch Goals
* _message board_
* _log in through discogs_
* _user want list_
* _I want to be able to see the total value of my collection and the value of each album I own._
* _phone capabilities_


## ISSUES
SEARCH.html.erb
  - empty 'photo' boxes are showing up, with no albums? 
  - spacing issues 
  - need sort by options?
  - images need to be situated properly (unformatted, copy from front_end formatting?)
<!-- ---------front-end----------- -->
* work on search function for searching a collection -> gem "pg_search"
* scopes for sorting

* project title
* _general styling
* _gallery view/tiling for albums


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
