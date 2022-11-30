
# encoding: utf-8

require 'helper'

describe TeuxDeux::Client::ToDos do
  before do
    @client = TeuxDeux::Client.new(:login => 'user', :password => 'secret')
  end

  describe ".list_todos" do
    it "should return list of todos" do
      stub_get("list.json").
        to_return(:body => fixture("todo_list.json"))

      todos = @client.list_todos
      todos.size.should == 2

      todos[0].id.should == 1
      todos[0].done.should == false
      todos[1].done.should == true
    end
  end

  describe ".list_somedays" do
    it "should return list of someday todos" do
      stub_get("list/someday.json").
        to_return(:body => fixture("someday_list.json"))

      todos = @client.list_somedays
      todos.size.should == 2

      todos[0].id.should == 1337
      todos[0].do_on.should == "1989-12-01"
      todos[0].done.should == true