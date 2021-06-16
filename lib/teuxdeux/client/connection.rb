require 'faraday_middleware'
require 'faraday/response/raise_error'

module TeuxDeux
  class Client
    # @private
    module Connection
      BASE_URL = "https://teuxdeux.com/api/"
      private

      def connection(raw=false