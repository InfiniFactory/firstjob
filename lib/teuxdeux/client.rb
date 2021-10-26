require 'teuxdeux/client/authentication'
require 'teuxdeux/client/connection'
require 'teuxdeux/client/request'
require 'teuxdeux/client/user'
require 'teuxdeux/client/todos'

module TeuxDeux
  class Client
    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    def initialize(options={})
      