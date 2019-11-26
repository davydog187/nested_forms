defmodule NestedFormsWeb.PageController do
  use NestedFormsWeb, :controller
  import Phoenix.LiveView.Controller

  def index(conn, _params) do
    live_render(conn, NestedFormsWeb.FormLive)
  end
end
