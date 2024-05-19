import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :coverage_test, CoverageTestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "fqmuWYqv2/R2zgauHtPwJGGiKCfd7OsdCsi6gSy7soogOWIuGQ4X8poGQuNIb/PN",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# config :phoenix_live_view,
#  enable_expensive_runtime_checks: true

config :excoveralls, :endpoint, System.get_env("COVERALLS_URL")
