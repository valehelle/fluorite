defmodule FluoriteWeb.PageController do
  use FluoriteWeb, :controller
  alias Fluorite.Accounts
  alias Fluorite.Accounts.User
  
  def index(conn, _params) do
    render(conn, "index.html")
  end

  def pricing(conn, _params) do
    render(conn, "pricing.html")
  end

  def email(conn, _params) do
    changeset = User.changeset(%User{}, %{})
    render(conn, "email.html", changeset: changeset)
  end

  def email_success(conn, _params) do
    changeset = User.changeset(%User{}, %{})
    render(conn, "email_success.html", changeset: changeset)
  end

  def create(conn, %{"user" => user_params}) do
    case Accounts.create_user(user_params) do
    {:ok, user} -> redirect(conn, to: Routes.page_path(conn, :email_success))
    {:error, changeset} -> render(conn, "email.html", changeset: changeset)
    end
  end
  
  def success(conn, _params) do
    render(conn, "success.html")
  end
  
  def fail(conn, _params) do
    redirect(conn, to: Routes.page_path(conn, :index))
  end

end
