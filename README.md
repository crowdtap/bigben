BigBen [![Build Status](https://travis-ci.org/crowdtap/bigben.png?branch=master)](https://travis-ci.org/crowdtap/bigben)
======

BigBen is a dead simple way to run a timer in a background thread.

Install
-------

```ruby
gem install bigben
```
or add the following line to your Gemfile:
```ruby
gem 'bigben'
```
and run `bundle install`

Usage
-----

```ruby
  timer = BigBen.new('timer', 1) do
    puts "Hello World"
  end
```

This will output "Hello World" every second. **Note that this happens on a
background thread.**

License
-------
Copyright (C) 2013 Crowdtap

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
