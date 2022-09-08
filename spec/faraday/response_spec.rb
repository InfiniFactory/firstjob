# encoding: utf-8

require 'helper'

describe Faraday::Response do
  before do
    @client = TeuxDeux::Client.new
  end

  {
    401 => TeuxDeux::Unauthorized,
    404 => TeuxDeux::NotFound,
    500 => TeuxDeux::InternalServerError,
  }.each do