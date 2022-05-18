defmodule BinanceWrapi.Behaviours.HttpAdapter do
  @moduledoc """
  Behavour Specification to adopt by Http adapters
  """
  @type t :: module
  @type method :: :delete | :get | :head | :options | :patch | :post | :put | binary
  @type url :: URI.t()
  @type headers :: [{binary, binary}]
  @type body :: term
  @type opts :: Keyword.t


  @doc """
  Deliver the request
  """
  @callback request(method, url, headers, body, opts) :: {:ok, term} | {:error, term}

  # @callback setup(endpoints, opts) :: {:ok, term} | {:error, term}


end
