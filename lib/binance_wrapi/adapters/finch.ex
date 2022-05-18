defmodule BinanceWrapi.Adapters.Finch do
  @moduledoc """
  Finch adapter for Http Requests
  """
  alias BinanceWrapi
  require Logger

  @behaviour BinanceWrapi.Behaviours.HttpAdapter

  @default_finch BinanceWrapi.Finch

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
        ) ::
          {:error, %{:__exception__ => true, :__struct__ => atom, optional(atom) => any}}
          | {:ok, Finch.Response.t()}
  def request(method, url, headers \\ [], body \\ nil, opts \\ []) do
    Logger.debug("adapter.finch #{method} request to #{url}#{if body, do: "\nBody: #{inspect body}"}")
    config = Application.get_env(:parser_app, __MODULE__, [])
    {app_finch, finch_opts } = Keyword.pop(config, :otp_app, @default_finch)
      # config[:otp_app] || @default_finch
    f_opts = finch_opts ++ opts
    Finch.build(method, url, headers, body)
    |> Finch.request( app_finch, f_opts)
  end


  # def setup(endpoints \\ [], opts \\ []) do
  #   Logger.info("Finch Pooling Endpoints: #{inspect endpoints}")
  #   {name, opts} = Keyword.pop(opts, :name, "binance_wrapi_finch")
  #   pools = Keyword.get(opts, :pools, [])
  #   {default_pool_config, pools} = Map.pop(pools, :default)
  #   f_pools = pools ++ [default: default_pool_config]
  #   f_opts = [ name: name, pools: f_pools] ++ opts
  #   Finch.start_link(f_opts)
  #   { :ok}
  # end

end
