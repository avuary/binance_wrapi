defmodule BinanceWrapi.Http.Adapter do
  @moduledoc """
  Performs the http request. operations
  """
  #alias BinanceWrapi
  #use BinanceWrapi.Http.Adapter, otp_app: Application.get_env(:adapter, __MODULE__, [])
  require Logger

  @default_adapter BinanceWrapi.Adapters.Finch

  @doc """
  Performs the http request. operations to the given adapter.
  """
  @spec request(
          :delete | :get | :head | :options | :patch | :post | :put | binary,
          binary | URI.t(),
          [{binary, binary}],
          nil
          | binary
          | maybe_improper_list(
              binary | maybe_improper_list(any, binary | []) | byte,
              binary | []
            )
          | {:stream, any},
          keyword
        ) :: { :error, term } | { :ok, term }
  def request(method, url, headers, body \\nil, opts \\ []) do
    Logger.debug("#{method} request to #{url}#{if body, do: "\nBody: #{inspect body}"}")
    config = Application.get_env(:binance_wrapi, __MODULE__, [])
    adapter = config[:adapter] || @default_adapter
    adapter.request(method, url, headers, body, opts)
  end

end
