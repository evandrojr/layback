#!/usr/bin/env ruby
require 'rubygems'
require 'bundler'

Bundler.require(:default, :development, :test)

system("crawl4subs ~/Downloads pob por spa eng bre ger")
system("watch4subs ~/Downloads pob por spa eng bre ger")
system("remote_control_server")
