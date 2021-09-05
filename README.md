# TwitterClonePhoenixTutorial

This a simple project made as a learning experience with Elixir and the Phoenix framework. It is the result from a tutorial created by Chris McCord, available [here](https://www.youtube.com/watch?v=MZvmYaFkNJI).

This version comes with an additional docker-compose file that sets up a pre-configured PostgreSQL database which the application connects to. This is an optional step. Database connection can be manually configured for development in the `./config/dev.exs` file.

To set up a database with docker-compose:

  * Ensure [Docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/) are installed and running on your machine
  * Run `docker-compose up -d` from your terminal at this application's root directory


To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit both [`localhost:4000`](http://localhost:4000) and [`localhost:4000/posts`](http://localhost:4000/posts) from your browser.

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
