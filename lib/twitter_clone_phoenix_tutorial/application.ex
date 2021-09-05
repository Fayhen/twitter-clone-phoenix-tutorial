defmodule TwitterClonePhoenixTutorial.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      TwitterClonePhoenixTutorial.Repo,
      # Start the Telemetry supervisor
      TwitterClonePhoenixTutorialWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: TwitterClonePhoenixTutorial.PubSub},
      # Start the Endpoint (http/https)
      TwitterClonePhoenixTutorialWeb.Endpoint
      # Start a worker by calling: TwitterClonePhoenixTutorial.Worker.start_link(arg)
      # {TwitterClonePhoenixTutorial.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TwitterClonePhoenixTutorial.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    TwitterClonePhoenixTutorialWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
