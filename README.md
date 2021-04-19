
TeuxDeux (unofficial API)
=========================
This library acts as a client for the [unofficial TeuxDeux API][apiwiki].

-----
Attention!
==========

Teuxdeux recently switched to a new version. The API documented and implemented
here is not working anymore. I was not yet able to work on a fix, but I was
assured by the teuxdeux developer that there will be an official API soon.

-----

With it you can do all the things the webinterface can do:

* fetch your todos
* create new todos
* update your todos
* delete your todos

See the [API documentation][apiwiki] for more information about the returnend data.

Build Status: ![Travis CI Build Status](https://secure.travis-ci.org/badboy/teuxdeux.png)

Examples
========

### Create new client

    client = TeuxDeux::Client.new :login => "mail", :password => "secret"

### Get user data

    client.user
    => <#Hashie::Rash email="mail" id=42 login="name" time_zone="Berlin" utc_offset=60>

### Get todos

    client.todos
    => [<#Hashie::Rash do_on="2011-05-26" done=false id=10601581 position=0 todo="create awesome teuxdeux client" updated_at=1306353624 user_id=42>, ...]

### Get "someday" todos

    client.someday
    => [<#Hashie::Rash do_on="1989-12-01" done=false id=10601582 position=0 todo="be awesome" updated_at=1298486839 user_id=42>, ...]

### Create todo item

    client.create_todo("get freaky!", "2011-06-01")
    => [<#Hashie::Rash do_on="2011-06-01" done=false id=10601583 position=0 todo="get freaky!" updated_at=1306360182 user_id=42>, ...]

### Update todo item

    client.update_todo(10601581, :done => true)
    => [<#Hashie::Rash do_on="2011-05-26" done=true id=10601581 position=0 todo="create awesome teuxdeux client" updated_at=1306360182 user_id=42>, ...]
