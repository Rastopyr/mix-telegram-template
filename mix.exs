defmodule {{MODULE_NAME}}.Mixfile do
  use Mix.Project

  def project do
    [ app: :{{APP_NAME}},
      version: "0.0.1",
      elixir: "~> {{MIX_VERSION_SHORT}}",
      elixirc_paths: ["lib"],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { {{MODULE_NAME}}, [] },
      applications: [:logger, :nadia]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:nadia, "~> 0.4.2"}
    ]
  end
end
