
# encoding: utf-8

require 'helper'

describe TeuxDeux::Client::ToDos do
  before do
    @client = TeuxDeux::Client.new(:login => 'user', :password => 'secret')
  end

  describe ".list_todos" do
    it "should return list of todos" do
      stub_get("list.json").