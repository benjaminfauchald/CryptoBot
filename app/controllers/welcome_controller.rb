class WelcomeController < ApplicationController
  require 'rubygems'
  require 'active_support'
  include HTTParty


  def index
    # Use the class methods to get down to business quickly
    response = HTTParty.get('https://bx.in.th/api/trade/?pairing=26')
    #puts response.body, response.code, response.message, response.headers.inspect
    @data = JSON.parse(response.body)
  end
end
