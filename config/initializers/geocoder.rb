require 'redis'

REDIS = Redis.connect(url: ENV['REDISTOGO_URL'])

Geocoder.configure(
  lookup: :google,
  cache: REDIS,
  always_raise: [
    Geocoder::OverQueryLimitError,
    Geocoder::RequestDenied,
    Geocoder::InvalidRequest,
    Geocoder::InvalidApiKey
  ]
)

Geocoder::Configuration.timeout = 100

# geocoding service (see below for supported options):
Geocoder::Configuration.lookup = :google

# use HTTPS for geocoding service connections:
Geocoder::Configuration.use_https = true

# language to use (for search queries and reverse geocoding):
Geocoder::Configuration.language = :en