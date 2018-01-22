# Battlesnake Elixir

A basic setup for an Elixir Battlesnake with instructions for how to deploy on Heroku.

* uses Phoenix framework with default postgres setup
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

# Heroku

Deplying on Heroku for Elixir requires a few more steps than Ruby. But I'm most or less summarizing what's mentioned [here](https://hexdocs.pm/phoenix/heroku.html).
