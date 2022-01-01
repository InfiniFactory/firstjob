require 'faraday'
require 'teuxdeux/version'

module TeuxDeux
  module Configuration
    VALID_OPTIONS_KEYS = [
      :adapter,
      :login,
      :password,
      :proxy,
      :user_agent].freeze

    DEFAULT_ADAPTER    = Faraday.def