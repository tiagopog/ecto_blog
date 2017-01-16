defmodule EctoBlog.Post do
  use Ecto.Schema

  import Ecto.Changeset, only: [cast: 3]
  import Ecto.Query, only: [from: 2]

  alias EctoBlog.Post
  alias EctoBlog.Repo

  schema "posts" do
    field :title
    field :content

    timestamps
  end

  @required_fields ~w(title)

  def index do
    query = from p in Post, select: %{title: p.title, content: p.content}
    Repo.all(query)
  end

  def show(id) do
    Repo.get!(Post, id)
  end

  def create(%{} = data) do
    %Post{}
    |> cast(data, @required_fields)
    |> Repo.insert!
  end

  def update(%{"id" => id} = data) do
    show(id)
    |> cast(data, @required_fields)
    |> Repo.update!
  end

  def destroy(id) do
    show(id)
    |> Repo.delete!
  end
end
