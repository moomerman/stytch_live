defmodule StytchLive.MixProject do
  use Mix.Project

  @source_url "https://github.com/moomerman/stytch_live"
  @version "0.1.0"

  def project do
    [
      app: :stytch_live,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "StytchLive",
      description: "Live components for Stytch Auth in Phoenix Applications",
      source_url: @source_url,
      package: package(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package() do
    [
      files: ~w(lib mix.exs README* LICENSE*),
      links: %{GitHub: @source_url},
      licenses: ["MIT"]
    ]
  end

  defp docs() do
    [
      extras: [
        "README.md": [title: "Overview"],
        LICENSE: [title: "License"]
      ],
      main: "readme"
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "0.29.0", only: :dev, runtime: false}
    ]
  end
end
