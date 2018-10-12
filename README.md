# Prevoz

https://budi-prevoz.herokuapp.com/

This is a website meant for ride sharing, you can add, edit, delete your offered rides. It also includes a login and register system with password hashing


## Run Locally

* Run this command:  ```git clone https://github.com/budi1200/prevoz.git```
* Move into the cloned directory: ``` cd prevoz ```
* Run: ``` bundle install ```
  * If it fails you might need to run this command ``` sudo apt-get install libpq-dev ``` and try again
* Run: ``` rake db:migrate ```
* Start rails server: ``` rails s ```
* Project is now accessible on ``` localhost:3000 ```

## Stack
* Ruby On Rails
* Mysql (dev)
* PostgreSQL (production)
* [Material Design Lite](https://getmdl.io/components/)
* Heroku
