defmodule BinanceWrapi.Http do
  alias BinanceWrapi
  def request(method, url, body, headers, opts ) do
    # opts = opts || {}
    # params = [ hmac_sha_256]
    # is signed?

    # |> build_request
    # |> add_headers
    # |> add_signature
    # |> request
    # |> handle_response
    BinanceWrapi.Http.Adapter.request(method, url, body, headers, opts)
  end

end
