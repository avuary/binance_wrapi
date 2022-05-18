defmodule BinanceWrapi.Wrapi.Api.Api.V3 do
  alias BinanceWrapi.Query, as: Query
  require Logger

  @doc """
  Test Connectivity

  GET /api/v3/ping

  https://binance-docs.github.io/apidocs/spot/en/#test-connectivity
  """
  def ping do
    Logger.debug("GET /api/v3/ping")
    endpoint_opts = [
      endpoint: :general_spot,
      taxo: :rest,
      method: :get,
      path: "/api/v3/ping",
      signed: :none,
      weight: 1,
      weight_type: :ip,
      data_source: :memory,
      visibility: :public
    ]
    params_mandatory = []
    params_optional = []

    payload = params_mandatory ++ params_optional

    Query.execute(payload, endpoint_opts, endpoint_opts[:taxo])
  end

  @doc """
  Check Server Time

  GET /api/v3/time

  https://binance-docs.github.io/apidocs/spot/en/#check-server-time
  """
  def time do
    Logger.debug("GET /api/v3/time")
    endpoint_opts = [
      endpoint: :general_spot,
      taxo: :rest,
      method: :get,
      path: "/api/v3/time",
      signed: :none,
      weight: 1,
      weight_type: :ip,
      data_source: :memory,
      visibility: :public
    ]
    params_mandatory = []
    params_optional = []

    payload = params_mandatory ++ params_optional

    Query.execute(payload, endpoint_opts, endpoint_opts[:taxo])
  end

  @doc """
  Exchange Information

  GET /api/v3/exchangeInfo

  https://binance-docs.github.io/apidocs/spot/en/#exchange-information
  """
  def exchange_info( symbols \\ nil ) do
    Logger.debug("GET /api/v3/exchangeInfo")
    endpoint_opts = [
      endpoint: :general_spot,
      taxo: :rest,
      method: :get,
      path: "/api/v3/exchangeInfo",
      signed: :none,
      weight: 10,
      weight_type: :ip,
      data_source: :memory,
      visibility: :public
    ]
    params_mandatory = []
    params_optional = exchange_info_params(symbols)

    payload = params_mandatory ++ params_optional

    Query.execute(payload, endpoint_opts, endpoint_opts[:taxo])
  end

  defp exchange_info_params(params) when is_binary(params) do
    [ symbol: params ]
  end
  defp exchange_info_params(params) when is_list(params) and length(params) > 0 do
    [ symbols: params ]
  end
  defp exchange_info_params(_params) do
    []
  end
end
