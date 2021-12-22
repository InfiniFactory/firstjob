require 'faraday'
require 'teuxdeux/version'

module TeuxDeux
  module Configuration
    VALID_OPTIONS_KEYS = [
      :adapter,
      :login,
      :password,
      :pro