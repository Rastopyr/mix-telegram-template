defmodule {{MODULE_NAME}}.Matching do
  use GenServer
  alias {{MODULE_NAME}}.Commands

  def start_link(opts \\ []) do
    require Logger

    Logger.log :info, "Starting parsing."
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def init(:ok) do
    {:ok, 0}
  end

  def handle_cast({:match, msg}, state) do
    try do
      Commands.match_msg(msg)
    rescue
      _ -> nil
    end

    {:noreply, state}
  end
end
