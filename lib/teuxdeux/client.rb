require 'teuxdeux/client/authentication'
require 'teuxdeux/client/connection'
require 'teuxdeux/client/request'
require 'teuxdeux/client/user'
require 'teuxdeux/client/todos'

module TeuxDeux
  class Client
    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    def initialize(options={})
      options = TeuxDeux.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end

    include TeuxDeux::Client::Authentic