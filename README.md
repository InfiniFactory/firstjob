
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
