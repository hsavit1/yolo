defmodule YoloWeb.PageController do
  use YoloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
