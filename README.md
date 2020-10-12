# README

##### Prerequisites
Before starting make sure the following are installed on your system

-Ruby [2.6.1]
-Rails [6.0.3.3]

##### Repository
Fork and clone this repository
```
git clone https://github.com/rayalva407/HomeSwapApp.git
```

##### Install gems in the Gemfile
Run this command to install all the gems needed.
```
bundle install
```

##### Setup the database
Run the following commands to migrate the database and seed
```
rails db:migrate
rails db:seed
```

##### Start the server
You can start the rails server by using this command
```
rails s
```

Open your browser and visit the site at http://localhost:3000