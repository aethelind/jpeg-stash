#  JPEG Stash
![Tests](https://github.com/aethelind/jpeg-stash/actions/workflows/main.yml/badge.svg?branch=master)  ![Heroku](https://heroku-badge.herokuapp.com/?app=jpeg-stash)

JPEG Stash is an [image repository](https://docs.google.com/document/d/1eg3sJTOwtyFhDopKedRD6142CFkDfWp1QvRKXNTPIOc/edit?usp=sharing) where users can stash + share all their best jpegs!  
Built with Ruby on Rails, deployed on Heroku.   

[<img width="1552" alt="feed" src="https://user-images.githubusercontent.com/42299845/133905809-d2a7347f-6240-41b5-a1a0-f395d1f24384.png">](https://jpeg-stash.herokuapp.com/)

## Demo
### [ ---> :rocket: Live Demo Here! :rocket: <--- ](https://jpeg-stash.herokuapp.com/)  

## Features
### Feed
The main page of JPEG Stash shows a feed of all the images users have uploaded, with the most recent image on top.
### Image Upload
Users can upload images to JPEG stash. The image must be a JPEG or PNG, and have a maximum size of 3MB.  
Since JPEG Stash is deployed on Heroku, images must be stored in an object store elsewhere. I chose to integrate an Amazon S3 bucket for storage.
### User Access Management
JPEG Stash can be accessed without an account, but creating an account is quick and easy. I implemented simple authentication using bcrypt to encrypt passwords. When a user successfully logs in, a session is created. Logging out destroys this session. Images can only be editted or deleted if the logged in user is also the uploader of the image. Users can be created or deleted, and deleting a user also deletes any images they uploaded. 

## Test Suite   
![Tests](https://github.com/aethelind/jpeg-stash/actions/workflows/main.yml/badge.svg?branch=master)  
The test suite was created with Capybara, Selenium, and RSpec. I created [a github action](https://github.com/aethelind/jpeg-stash/actions/workflows/main.yml) to run the tests after every commit or pull request. The change won't be deployed to Heroku unless the tests pass.  



The tests can be run locally with the following command:
```bash
HEADLESS=true bundle exec rspec spec/features
# OR
bundle exec rspec spec/features
```

## Local Setup
Clone this repo, and cd into the jpeg-stash folder.
```bash
git clone https://github.com/aethelind/jpeg-stash.git
# OR
git clone git@github.com:aethelind/jpeg-stash.git
```
```bash
cd jpeg-stash
```

Ensure all the required dependencies are installed:
```bash
bundle install 
```

Run the Database Migrations:
```bash
rake db:migrate
```

Serve jpeg-stash:
```bash
rails s
```

jpeg-stash should now be running [locally on port 3000](http://localhost:3000/)!

