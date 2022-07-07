require 'teuxdeux/configuration'
require 'teuxdeux/client'

module TeuxDeux
  extend Configuration

  # Alias for Teuxdeux::Client.new
  #
  # @return [Teuxdeux::Client]
  def self.client(options={})
    TeuxDeux::Client.new(options)
  end

  # Custom error class for rescuing from all TeuxDeux errors
  class Error < StandardError; end

  # Raised when TeuxDeux retu