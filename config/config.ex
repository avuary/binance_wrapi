import Config

config :logger, :console,
  colors: [enabled: true],
  format: "\n$time $metadata[$level] $message\n"

# config :exvcr,
#   filter_request_headers: [
#     "X-MBX-APIKEY"
#   ],
#   filter_sensitive_data: [
#     [pattern: "signature=[A-Z0-9]+", placeholder: "signature=***"]
#   ]


config :binance_wrapi,
  base_url: "binance.com",
  api_key: System.get_env("BINANCE_API_KEY") || "",
  api_secret: System.get_env("BINANCE_API_SECRET") || ""

config :finch,
  pool_timeout: 5_000,
  receive_timeout: 15_000

config :binance_wrapi, BinanceWrapi.Adapters.Finch,
  otp_app: BinanceWrapi.Finch

config :binance_wrapi, BinanceWrapi.Http.Adapter,
  adapter: BinanceWrapi.Adapters.Finch
