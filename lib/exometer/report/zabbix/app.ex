defmodule Exometer.Report.Zabbix.App do
  @moduledoc """
  """
  use Application
  import Supervisor.Spec

  def start(_type, _args) do
    Supervisor.start_link([
      worker(Zabbix, [])
    ], strategy: :one_for_one, name: __MODULE__)
  end
end
