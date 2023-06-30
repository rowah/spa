defmodule Spa.ArticlesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Spa.Articles` context.
  """

  @doc """
  Generate a article.
  """
  def article_fixture(attrs \\ %{}) do
    {:ok, article} =
      attrs
      |> Enum.into(%{
        content: "some content",
        title: "some title"
      })
      |> Spa.Articles.create_article()

    article
  end
end
