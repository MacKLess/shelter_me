# Shelter Me API

### _Epicodus Project in Ruby on Rails, December 15, 2017_

### By L. Devin MacKrell

## Description

_This is an API for a pet adoption site._

## Installation and Setup

To install on your own machine, follow the instructions below:

* Clone this repository.
* Run the following commands in the project root directory:
  ```
  bundle update
  rake db:setup
  rails db:seed
  rails s
  ```
* Open ```localhost:3000``` in your web browser

## Specifications

* API provides the following information  
  * Name
  * Breed
* API can accomodate the following:
  * GET (http://localhost:3000/api/v1/cats)
  * POST (http://localhost:3000/api/v1/cats)
  * PUT (http://localhost:3000/api/v1/cats/:id)
  * DELETE (http://localhost:3000/api/v1/cats/:id)
* API can provide a random cat: GET (http://localhost:3000/api/v1/cats/random)  
* API can provide search parameters by specific ```breed```
* API can support versioning
* API can handle exceptions
* API has thorough testing with request specs  

## Support and contact details

_Please contact [ldmackrell@gmail.com](mailto:ldmackrell@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Rails
* Devise

### License

Copyright (c) 2017 **L. Devin MacKrell**

*This software is licensed under the MIT license.*
