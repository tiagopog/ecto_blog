# EctoBlog

Just a mix application created from scratch to test the integration with Ecto out of the Phoenix framework :-)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `ecto_blog` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:ecto_blog, "~> 0.1.0"}]
    end
    ```

  2. Ensure `ecto_blog` is started before your application:

    ```elixir
    def application do
      [applications: [:ecto_blog]]
    end
    ```

## Usage


  1. After cloning the project to your local, install the dependencies:

    ```
    mix deps.get
    ```

  2. Ensure you have a Postgres properly configured. Note: if your database config doesn't match to this one, please change the `config/config.exs`.

  3. Create and migrate the database:

    ```
    mix do ecto.create, ecto.migrate
    ```

  4. Open a new iex session:

    ```
    iex -S mix
    ```

  5. Play with your Post model:

    ```elixir
    alias EctoBlog.Post

    # Get all posts:
    Post.index

    # Get a post:
    Post.show(1)

    # Create post:
    Post.create(%{title: "Foobar", content: "Lorem ipsum"})

    # Update a post:
    Post.update(%{"id" => 4, "title" => "Foobar 4"})

    # Destroy post:
    Post.destroy(1)
    ```
