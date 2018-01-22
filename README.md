# Battlesnake Elixir

A basic setup for an Elixir Battlesnake with instructions for how to deploy on Heroku.

![elixir_phoenix_heroku](https://image.ibb.co/kwjiGw/elixir_phoenix_heroku.jpg)

* uses Phoenix framework with default postgres setup (even though you probably won't use it)
* default brunch asset settings as well

**Setup difficulty:** intermediate

I'm assuming that you know a bit of Elixir. 

# What you'll need
* Elixir 1.6 installed
* Erlang installed (I'm using Erlang version 20)

I strongly suggest using a version manager:

## ASDF Version Manager (optional)

1. Install ASDF
2. Install ASDF-Elixir
3. Install ASDF-Erlang (if you need it)

https://github.com/asdf-vm/asdf
https://github.com/asdf-vm/asdf-elixir
https://github.com/asdf-vm/asdf-erlang

# Running locally for the first time

  1. Install dependencies with `mix deps.get`
  2. Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  3. Install Node.js dependencies with `cd assets && npm install`
  4. Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

# Deploying on Heroku

I'm most or less summarizing what's mentioned [here](https://hexdocs.pm/phoenix/heroku.html).

1. [Sign up for Heroku](https://signup.heroku.com/)

2. [Install the Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)

3. Create a new Heroku app

4. Link your repo to the app through the command line:
  `heroku git:remote -a [YOUR APP NAME]`

5. Set the buildpack through the command line: 
  `heroku buildpacks:set https://github.com/HashNuke/heroku-buildpack-elixir.git`

6. Set the static buildpack through the command line (optional, but in this case we'll use it): 
  `heroku buildpacks:add https://github.com/gjaldon/heroku-buildpack-phoenix-static.git`

7. There are a few environment variables you'll need to create (via command line or your app's settings page):
 * `heroku addons:create heroku-postgresql:hobby-dev`
 * `heroku config:set POOL_SIZE=18`
 * (optional) `heroku run "POOL_SIZE=2 mix [YOUR APP NAME].task"` Note: you need to insert your app name
 * generate a secret via: `mix phx.gen.secret` then `heroku config:set SECRET_KEY_BASE="[THE SECRET GOES HERE]"`

This is what it should look like in your Heroku settings page (with different values):
![heroku settings](https://image.ibb.co/npRNbw/Screenshot_2018_01_21_17_28_11.png)

8. In your `config/prod.exs` file change this line:
    `url: [scheme: "https", host: "battlesnake-elixir.herokuapp.com", port: 443],`
  to the url of your heroku app. 

9. Commit all your changes in git, and push to heroku: `git push heroku master`

## Warnings about Heroku
Since you're using a free hobby app, your app will fall asleep when inactive. Make sure it's awake by hitting its URL before you play a game. This will normally happen in a game when you receive a `/start` request. After that you should be fine. 

# Questions?

You'll find me in the YYJ Tech Slack channel or in a million other places. 
