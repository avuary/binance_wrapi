defmodule BinanceWrapi.Query do
  alias BinanceWrapi.Http, as: Rest
  require Logger
  def execute(payload, endpoint_opts, :rest  ) do
    Logger.debug("REST Query.Execute: #{inspect endpoint_opts}\n#{inspect payload}")
    req_path  = Path.join("https://api.binance.com" , endpoint_opts[:path])
    Rest.request(
      endpoint_opts[:method],
      req_path,
      []
    )
  end

  def execute(payload, endpoint_opts, :wss  ) do
    Logger.debug("WSS Query.Execute: #{inspect endpoint_opts}\n#{inspect payload}")
    :ok
  end

  def execute(payload, endpoint_opts, :stream  ) do
    Logger.debug("STREAM Query.Execute: #{inspect endpoint_opts}\n#{inspect payload}")
    :ok
  end

  defp restify(:none, method, url, headers, body, opts) do
    Logger.debug("Restify Public #{method} #{url}")
    Rest.request(method, url, headers, body, opts)
  end

end
