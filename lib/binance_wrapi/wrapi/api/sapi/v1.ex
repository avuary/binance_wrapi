defmodule BinanceWrapi.Wrapi.Api.Sapi.V1 do

  @doc """
  Daily Account Snapshot (USER_DATA)
  GET /sapi/v1/accountSnapshot (HMAC SHA256)
  https://binance-docs.github.io/apidocs/spot/en/#daily-account-snapshot-user_data
  """

  def account_snapshot do
    endpoint_opts = [
      endpoint: :general_spot,
      taxo: :rest,
      method: :get,
      path: "/sapi/v1/accountSnapshot",
      signed: :hmac_sha_256,
      weight: 1,
      weight_type: :ip
    ]

    endpoint_opts

  end
end
