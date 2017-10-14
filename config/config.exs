use Mix.Config

config :{{APP_NAME}},
  bot_name: ""

config :nadia,
  token: ""

import_config "#{Mix.env}.exs"
