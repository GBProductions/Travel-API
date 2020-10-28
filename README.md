# Travel API

#### By **Garrett P. Brown, Alex Goodwin, Ophelia Swen**

### User Stories
- [x] As a user, I want to GET and POST reviews about travel destinations.
- [X] As a user, I want to GET reviews by country or city.
- [x] As a user, I want to see the most popular travel destinations by number of reviews or by overall rating.
- [x] As a user, I want to PUT and DELETE reviews, but only if I wrote them. (Start by requiring a user_name param to match the user_name of the author on the message. You can always try authentication later.)
- [x] As a user, I want to look up random destinations just for fun.


<!-- ### API Documentation Template --needs revision -- 

This API uses `GET` and `POST`  request to communicate. It parses data with reviews for various travel destinations around the world.

### Response Codes
```
200: Success
400: Bad request
401: Unauthorized
404: Cannot be found
405: Method not allowed
422: Unprocessable Entity 
50X: Server Error
```
### Error Codes Details
```
100: Bad Request
110: Unauthorized
120: User Authenticaion Invalid
130: Parameter Error
140: Item Missing
150: Conflict
160: Server Error
```
### Example Error Message

```
**Successful Response:**
```json
HTTP/1.1 200 OK
Server: My RESTful API
Content-Type: application/json
Content-Length: xy

{
   "apitoken": "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
   "expirationDate": "2018-02-13T15:31:55.559Z"
}
```
**Failed Response:**
```json
HTTP/1.1 401 Unauthorized
Server: My RESTful API
Content-Type: application/json
Content-Length: xy

{
    "code": 120,
    "message": "invalid crendetials",
    "resolve": "The username or password is not correct."
}
```  -->



## Setup/Installation Requirements

1. `$ git clone` [this repository](https://github.com/GBProductions/Travel-API)
2. `$ cd travel_api`
3. `$ bundle install`
4. `$ rails db:create`
5. `$ rails db:migrate`
6. `$ rails s` to start the server 

## Known Bugs
* No known bugs at this time.

## Technologies Used
* Ruby on Rails
  * ActiveRecord
  * RSPEC

## Support and contact details

_Email no one with any questions, comments, or concerns._

### License

*{This software is licensed under the MIT license}*

Copyright (c) 2020 **_{Garrett P. Brown, Alex Goodwin, Ophelia Swen}_**



Co-authored by: Ophelia Swen <ophelia.swen@gmail.com>
Co-authored-by: Alex Goodwin <hagoodwi@gmail.com>