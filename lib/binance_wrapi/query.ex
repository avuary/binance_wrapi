defmodule BinanceWrapi.Query do
  alias BinanceWrapi
  require Logger
  def execute(payload , endpoint_opts ) do
    Logger.debug("Query.Execute: #{inspect endpoint_opts}\n#{inspect payload}")
  end

end
