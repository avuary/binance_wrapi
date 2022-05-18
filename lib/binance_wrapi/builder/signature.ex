defmodule BinanceWrapi.Builder.Signature do

  def generate_hmac_sha256(secret_key, args_string) do
    :hmac
      |> :crypto.mac(
        :sha256,
        secret_key,
        args_string
      )
      |> Base.encode16()
  end

end
