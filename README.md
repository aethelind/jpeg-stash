# JPEG Stash
JPEG Stash is an [image repository](https://docs.google.com/document/d/1eg3sJTOwtyFhDopKedRD6142CFkDfWp1QvRKXNTPIOc/edit?usp=sharing) where users can stash + share all their best jpegs!

Built with Ruby on Rails,  deployed on Heroku.  

## Demo
### [---> :rocket: Live Demo Here! :rocket: <--- ](https://jpeg-stash.herokuapp.com/)  
[<img width="1440" alt="feed-screenshot" src="https://user-images.githubusercontent.com/42299845/133901789-c0aa14de-ef97-4a10-90bb-72d40212d143.png">](https://jpeg-stash.herokuapp.com/)


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

