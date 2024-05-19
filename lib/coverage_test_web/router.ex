defmodule CoverageTestWeb.Router do
  use CoverageTestWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CoverageTestWeb do
    pipe_through :api
  end
end
