#!/usr/bin/env ruby
require 'rubygems'
require 'bundler'

Bundler.require(:default, :development, :test)

# Shell execute
def se(command)
    puts command
    o = `#{command}`
    r = $?.to_i
    puts "#{o} #{r}"
    r
end


get '/lang4subs' do
   puts "Hello #{params.inspect}!"
   se("lang4subs ~/Downloads #{params[:lang]}")
end

get '/restart_minidlna' do
   se("sudo service minidlna restart")
end
