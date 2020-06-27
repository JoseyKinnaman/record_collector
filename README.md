# ReCollector 

#### Epicodus: Ruby Group Project


#### Josey Kinnaman, Chee Murakami, Zinfira Safargalieva, Allison Mackey, Ryan Duff 

## Description
A digital record collection catalog that helps a user keep track of records in their collection and organize it by specific parameters. 

## Setup/Installation Requirements
Users will need to install Ruby, Rails, psql and Postgres.
[Click here](https://www.ruby-lang.org/en/documentation/installation/) for instructions on installing Ruby.
[Click here](https://dataschool.com/learn-sql/how-to-start-a-postgresql-server-on-mac-os-x/) for instructions on installing psql and Postgres.
After installing the above software, users will need to clone this project from my [github repository](https://github.com/JoseyKinnaman/record_collector). Once cloned, use the command line to navigate to the project folder and install all necessary Ruby Gems with...
* _$ bundle install_
In the command line, type the following commands which will create the necessary database and launch a local server sso that you can access the application in a browser window.
* _$ rake db:create_
* _$ rake db:migrate_
* _$ rake db:test:prepare_
* _$ rails s_
* _Now open a web browser and enter localhost:3000 in the address bar to view the project._
* _or open here: https://record-collector-epiapp.herokuapp.com/_



## Specifications

| Behavior       | Input         | Output  |

## User Stories Employed to Determine Behavior Driven Development Strategy

* As an user I want to be able to store a list of all of the vinyl records in my collection.
* As a user I want to be able to search for an album by name, artist, genre, year and then select an album from a list and add it to my collection.
* I want to be able to add and delete records and the information that is stored with them.
* I want to be able to see my collection organized in different ways, such as by genre, album name, artist name and recently added. 
* I want to be able to display a virtual record shelf showing pictures of my albums. 

## Stretch Goals
* _To be able to search my collection_
* _Allow a user message board_
* _Log in through Discogs website_
* _Be able to add records to my 'want list'_
* _Be able to see the total value of my collection and the value of each album I own._
* _Media queries for cell phone capabilities_
* _Accounting for a User name in Devise and displayed in 'My collection'._

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
