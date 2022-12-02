
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
    end
  end

  describe ".create_todo" do
    it "should return a new todo" do
      stub_post("todo.json").
        with(:body => { :todo_item => {
          :todo => "new todo",
          :do_on => "2011-05-27",
          :done => "0",
          :position => "0"
        }}).
        to_return(:body => fixture("todo.json"))

        t = @client.create_todo("new todo", "2011-05-27")

        t.todo.should == "new todo"
        t.do_on.should == "2011-05-27"
    end
  end

  describe ".create_todo_someday" do