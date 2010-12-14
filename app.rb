#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

  get '/' do
    erb :index
  end

  put '/' do
    
    theFile = request.body.read
    puts "uploaded #{env['HTTP_X_FILENAME']} - #{request.body.read.size} bytes"    
    aFile = File.new(env['HTTP_X_FILENAME'], "wb")
    aFile.write(theFile)
    aFile.close
    
    
  end

  get '/2' do
    'page 2'
  end