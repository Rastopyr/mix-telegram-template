defmodule {{MODULE_NAME}} do
  use Application
  use Supervisor

  def start(_type, _args) do
    children = [
      supervisor({{MODULE_NAME}}.Polling, [[name: {{MODULE_NAME}}.Polling]]),
      supervisor({{MODULE_NAME}}.Matching, [[name: {{MODULE_NAME}}.Matching]])
    ]

    {:ok, _pid} = Supervisor.start_link(children, strategy: :one_for_one)
  end
end
