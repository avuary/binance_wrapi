defmodule BinanceWrapi.Builder do
  alias BinanceWrapi.Builder.Signature, as: Sign

  def signature_gen(:hmac_sha_256, api_key, args) do
    Sign.hmac_sha256( api_key, args)
  end
  def signature_gen(_method, _api_key, _args) do
    ""
  end
end
