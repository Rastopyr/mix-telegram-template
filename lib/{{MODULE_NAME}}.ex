defmodule {{MODULE_NAME}} do
  use Application
 use Supervisor

 tmp_dir = {{MODULE_NAME}}.Util.tmp_dir
 unless File.exists?(tmp_dir), do: File.mkdir(tmp_dir)

 def start(_type, _args) do
   require Logger
   Logger.log :info, "Starting bot supervisors."

   children = [
     supervisor({{MODULE_NAME}}.Polling, [[name: {{MODULE_NAME}}.Polling]]),
     supervisor({{MODULE_NAME}}.Matching, [[name: {{MODULE_NAME}}.Matching]])
   ]

   {:ok, _pid} = Supervisor.start_link(children, strategy: :one_for_one)
 end
end
