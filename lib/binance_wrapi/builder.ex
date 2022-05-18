defmodule BinanceWrapi.Builder do
  alias BinanceWrapi

  def signature_gen("hmac_sha_256", api_key, args) do
    Builder.Signature.generate_hmac_sha256( api_key, args)
  end
  def signature_gen(_method, _api_key, args) do
    args[:url]
  end
end
