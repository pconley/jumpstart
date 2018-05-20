# Rails Jumpstart

My branch of Jumpstart that adds 

**Note:** Requires Rails 5.2

## Getting Started

Jumpstart is a Rails template, so you pass it in as an option when creating a new app.

#### Creating a new app

From the Jumpstart directory...

```bash
rails new jump999 -T -d postgresql -m jumpstart/template.rb
```

#### Cleaning up

```bash
rails db:drop
spring stop
cd ..
rm -rf myapp
```

### Key Tech

-- ruby and rails
-- rspec, shiken, selenium
-- devise for auth
-- webpack 


### Heroku
heroku login
heroku create
-- failed needed a devise secret key... comment out secret key in devise initializer

heroku run rake db:migrate
heroku run rake db:seed
heroku open


### TODO

-- add complete rspecs
-- add complete webtests