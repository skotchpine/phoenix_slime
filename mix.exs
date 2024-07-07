defmodule PhoenixSlime.Mixfile do
  use Mix.Project

  @version "0.13.0"

  def project do
    [
      app: :phoenix_slime,
      deps: deps(),
      description: "Phoenix Template Engine for Slim-like templates",
      elixir: "~> 1.10",
      package: package(),
      version: @version,
      elixirc_paths: elixirc_paths(Mix.env())
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def application do
    [applications: [:phoenix, :phoenix_html, :phoenix_live_view, :slime]]
  end

  def deps do
    [
      {:phoenix, "~> 1.7.0"},
      {:phoenix_html, "~> 4.0"},
      {:phoenix_live_view, "> 0.18.16"},
      {:jason, "~> 1.0", optional: true},
      # {:slime, github: "skotchpine/slime"},
      {:slime, path: "../slime"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:earmark, ">= 0.0.0", only: :dev},
      {:credo, ">= 0.0.0", only: [:dev, :test]},
      {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Sean Callan", "Alexander Stanko"],
      files: ["lib", "priv", "mix.exs", "README*", "LICENSE*"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/slime-lang/phoenix_slime"}
    ]
  end
end
