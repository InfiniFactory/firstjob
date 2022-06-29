require 'teuxdeux/configuration'
require 'teuxdeux/client'

module TeuxDeux
  extend Configuration

  # Alias for Teuxdeux::Client.new
  #
  # @return [Teuxdeux::Client]
  def self.client(options={})
    TeuxDeux::Client.new(o