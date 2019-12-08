defmodule YoloWeb.PageController do
  use YoloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def about(conn, _params) do
    render(conn, "about.html")
  end

  def resume(conn, _params) do
    render(conn, "resume.html")
  end

end
