defmodule ReviewsFrameworkWeb.PageController do
  use ReviewsFrameworkWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
