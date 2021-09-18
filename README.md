# :sparkles::camera:  JPEG Stash :camera::sparkles:
[~ ~ ~ ~ Live Demo Here! ~ ~ ~ ~](https://jpeg-stash.herokuapp.com/)  
JPEG Stash is an [image repository](https://docs.google.com/document/d/1eg3sJTOwtyFhDopKedRD6142CFkDfWp1QvRKXNTPIOc/edit?usp=sharing) where you can stash all your cool JPEGs! 

- Browse the feed to see all the JPEGs other users have stashed.
- Create an account and upload your own images! 
- Accounts and images can be deleted at any time.

Built with Ruby on Rails, deployed on Heroku.  

## Test Suite 
![Tests](https://github.com/aethelind/jpeg-stash/actions/workflows/main.yml/badge.svg)


## Running Locally
Clone this repo, and cd into the jpeg-stash folder.
```
git clone https://github.com/aethelind/jpeg-stash.git
# OR
git clone git@github.com:aethelind/jpeg-stash.git
```
```
cd jpeg-stash
```

Ensure all the required dependencies are installed:
```
bundle install 
```

Run the Database Migrations:
```
rake db:migrate
```

Serve jpeg-stash:
```
rails s
```

jpeg-stash should now be running [locally on port 3000](http://localhost:3000/)!

<!-- * Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
