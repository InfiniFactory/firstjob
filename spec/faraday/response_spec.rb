# encoding: utf-8

require 'helper'

describe Faraday::Response do
  before do
    @client = TeuxDeux::Client.new