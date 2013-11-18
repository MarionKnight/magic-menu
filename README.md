# Project: Menu Magic

http://magic-menu.herokuapp.com

Implemented for:
https://github.com/fox-squirrels-2013/magic-menu/blob/master/README.md

Author: Marion Knight, knight499@gmail.com

## Release 0: Copy the skeleton and push branch to heroku

Added ruby version to Gemfile to tell heroku that this is a Ruby app. From the command line used: 

> heroku create magic-menu 

> git push heroku saturday-fun:master. (My branch:master).

> heroku run rake db:migrate

Due to rakefile changes needed to use capybara with a web service, run tests using:
> bundle exec rspec spec 

Debugger, invoke with:
> rspec -d spec/features

Didn't need but useful for reference:
> heroku logs
> heroku pg:reset DATABASE
> heroku pg:info
> heroku pg:psql

also, "> git add -A" never "> git add .""

