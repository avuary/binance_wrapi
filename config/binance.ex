import Config

# The intention is to configure multiple api_keys and ednpoints instead of using just one.

binance_config = %{
  # Could be binance.us, testnet.binance.vision, etc.
  api_keys: %{
    reading_api: %{
      key: Application.get_env("BINANCE_API_KEY") || System.get_env("BINANCE_API_KEY") || "<YOUR_KEY>",
      secret: Application.get_env("BINANCE_API_SECRET") || System.get_env("BINANCE_API_SECRET") || "<YOUR_SECRET>",
      # :restricted || :unrestricted
      restrictions: Application.get_env("BINANCE_API_RESTRICTIONS") || :unrestricted,
      since: Application.get_env("BINANCE_API_SINCE") || "now"
    },
    spot_margin_api: %{
      key: Application.get_env("BINANCE_API_SPOT_MARGIN_KEY") || System.get_env("BINANCE_API_KEY") || "<YOUR_KEY>",
      secret: Application.get_env("BINANCE_API_SPOT_MARGIN_SECRET") || System.get_env("BINANCE_API_SECRET") || "<YOUR_SECRET>",
      restrictions: Application.get_env("BINANCE_API_SPOT_MARGIN_RESTRICTIONS") || :unrestricted,
      since: Application.get_env("BINANCE_API_SPOT_MARGIN_SINCE") || "now"
    },
    wihdrawals_api: %{
      key: Application.get_env("BINANCE_API_WITHDRAWALS_KEY") || System.get_env("BINANCE_API_KEY") || "<YOUR_KEY>",
      secret: Application.get_env("BINANCE_API_WITHDRAWALS_SECRET") || System.get_env("BINANCE_API_SECRET") || "<YOUR_SECRET>",
      restrictions: Application.get_env("BINANCE_API_WITHDRAWALS_RESTRICTIONS") || :unrestricted,
      since: Application.get_env("BINANCE_API_WITHDRAWALS_SINCE") || "now"
    },
    margin_loan_api: %{
      key: Application.get_env("BINANCE_API_MARGIN_LOAN_KEY") || System.get_env("BINANCE_API_KEY") || "<YOUR_KEY>",
      secret: Application.get_env("BINANCE_API_MARGIN_LOAN_SECRET") || System.get_env("BINANCE_API_SECRET") || "<YOUR_SECRET>",
      restrictions: Application.get_env("BINANCE_API_MARGIN_LOAN_RESTRICTIONS") || :unrestricted,
      since: Application.get_env("BINANCE_API_MARGIN_LOAN_SINCE") || "now"
    },
    futures_api: %{
      key: Application.get_env("BINANCE_API_FUTURES_KEY") || System.get_env("BINANCE_API_KEY") || "<YOUR_KEY>",
      secret: Application.get_env("BINANCE_API_FUTURES_SECRET") || System.get_env("BINANCE_API_SECRET") || "<YOUR_SECRET>",
      restrictions: Application.get_env("BINANCE_API_FUTURES_RESTRICTIONS") || :unrestricted,
      since: Application.get_env("BINANCE_API_FUTURES_SINCE") || "now"
    },
    universal_transfer_api: %{
      key: Application.get_env("BINANCE_API_UNIVERSAL_TRANSFER_KEY") || System.get_env("BINANCE_API_KEY") || "<YOUR_KEY>",
      secret: Application.get_env("BINANCE_API_UNIVERSAL_TRANSFER_SECRET") || System.get_env("BINANCE_API_SECRET") || "<YOUR_SECRET>",
      restrictions: Application.get_env("BINANCE_API_UNIVERSAL_TRANSFER_RESTRICTIONS") || :unrestricted,
      since: Application.get_env("BINANCE_API_UNIVERSAL_TRANSFER_SINCE") || "now"
    },
    vanilla_options_api: %{
      key: Application.get_env("BINANCE_API_VANILLA_OPTIONS_KEY") || System.get_env("BINANCE_API_KEY") || "<YOUR_KEY>",
      secret: Application.get_env("BINANCE_API_VANILLA_OPTIONS_SECRET") || System.get_env("BINANCE_API_SECRET") || "<YOUR_SECRET>",
      restrictions: Application.get_env("BINANCE_API_VANILLA_OPTIONS_RESTRICTIONS") || :unrestricted,
      since: Application.get_env("BINANCE_API_VANILLA_OPTIONS_SINCE") || "now"
    },
    symbol_whitelist_api: %{
      key: Application.get_env("BINANCE_API_SYMBOL_WHITELIST_KEY") || System.get_env("BINANCE_API_KEY") || "<YOUR_KEY>",
      secret: Application.get_env("BINANCE_API_SYMBOL_WHITELIST_SECRET") || System.get_env("BINANCE_API_SECRET") || "<YOUR_SECRET>",
      restrictions: Application.get_env("BINANCE_API_SYMBOL_WHITELIST_RESTRICTIONS") || :unrestricted,
      since: Application.get_env("BINANCE_API_SYMBOL_WHITELIST_SINCE") || "now"
    }
  },
  endpoints: %{
    # Could be binance.us, testnet.binance.vision, etc.
    base_url: "binance.com",
    api_prefix: "api",
  }
}

api_keys = [
  %{
    key: "<some_key>",
    secret: "<some_secret>",
    label: "FULL API",
    description: "Reading API",
    priority: 1,
    key_type: :hmac_sha256,
    restrictions: [
      reading: [
        permissions: [:trade, :user_data, :user_stream, :market_data, :secure_web_socket],
      ],
      spot_margin: [
        permissions: [:trade, :user_data, :user_stream, :market_data, :secure_web_socket],
      ],
      withdrawals: [
        permissions: [:trade, :user_data, :user_stream, :market_data, :secure_web_socket],
      ],
      margin_loan: [
        permissions: [:trade, :user_data, :user_stream, :market_data, :secure_web_socket],
      ],
      futures: [
        permissions: [:trade, :user_data, :user_stream, :market_data, :secure_web_socket],
      ],
      universal_transfer: [
        permissions: [:trade, :user_data, :user_stream, :market_data, :secure_web_socket],
      ],
      vanilla_options: [
        permissions: [:trade, :user_data, :user_stream, :market_data, :secure_web_socket],
      ],
      symbol_whitelist: [
        permissions: [:trade, :user_data, :user_stream, :market_data, :secure_web_socket],
      ],
    ],
    access_restrictions: {
      type: :unrestricted, # :restricted || :unrestricted
      created_at: "now",
    }
  }

]
