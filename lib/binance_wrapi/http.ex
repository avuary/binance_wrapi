defmodule BinanceWrapi.Http do
  alias BinanceWrapi
  require Logger
  def request(method, url, headers, body \\nil, opts \\ [] ) do
    Logger.debug("HTTP Request: #{inspect method}\n#{inspect url}\n#{inspect headers}\n#{inspect body}\n#{inspect opts}")
    # opts = opts || {}
    # params = [ hmac_sha_256]
    # is signed?

    # |> build_request
    # |> add_headers
    # |> add_signature
    # |> request
    # |> handle_response
    BinanceWrapi.Http.Adapter.request(method, url, headers, body, opts)
  end

end
