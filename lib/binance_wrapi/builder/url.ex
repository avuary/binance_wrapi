defmodule BinanceWrapi.Builder.Url do
  @moduledoc """
  This module have the related functions to build the url
  """

  @doc """
  This function constructs the url for the request.
  """
  @spec url(String.t,String.t, String.t) :: String.t
  def url(protocol, base_url, path) do
    Path.join(protocol, base_url)
    |> Path.join(path)
  end

  @doc """
  Add the signature to the url.
  """
  def add_signature(url, query_string ,signature) do
    "#{url}?#{query_string}&signature=#{signature}"
  end
  def add_signature(url, signature) do
     "#{url}?signature=#{signature}"
  end

  def add_headers() do

  end

  def headers(api_key, aditional \\ []) do
    [
      {"X-MBX-APIKEY", api_key}
    ] ++ aditional
  end
end
