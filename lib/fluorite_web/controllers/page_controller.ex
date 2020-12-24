defmodule FluoriteWeb.PageController do
  use FluoriteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
  def pricing(conn, _params) do
    render(conn, "pricing.html")
  end
  def email(conn, %{"store" => store}) do
    store = case store do
    "android" -> "Play Store"
    "ios" -> "App Store"
    _ -> ""
    end
    render(conn, "email.html", store: store)
  end
  def email(conn, _) do
    store = ""
    render(conn, "email.html", store: store)
  end
end
