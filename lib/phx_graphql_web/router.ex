defmodule PhxGraphqlWeb.Router do
  use PhxGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhxGraphqlWeb do
    pipe_through :api
  end
end
