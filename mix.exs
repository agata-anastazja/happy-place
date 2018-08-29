defmodule HappyPlace.MixProject do
  use Mix.Project

  def project do
    [
      app: :happy_place,
      version: "0.1.0",
      elixir: "~> 1.6",
      escript: [main_module: Commandline.CLI],
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.2"},
      {:poison, "~> 3.1"}
    ]
  end
end
