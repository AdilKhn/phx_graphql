defmodule PhxGraphqlWeb.NewsResolver do
  alias PhxGraphqlWeb.News

  def all_links(_root, _args, _info) do
    links = PhxGraphqlWeb.News.list_links()
    {:ok, links}
  end
end
