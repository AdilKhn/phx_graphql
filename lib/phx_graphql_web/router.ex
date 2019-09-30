defmodule PhxGraphqlWeb.Router do
  use PhxGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: PhxGraphqlWeb.Schema,
      interface: :simple,
      context: %{pubsub: PhxGraphqlWeb.Endpoint}
  end
end
