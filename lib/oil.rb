#this file acts as the environment
require 'nokogiri'
require 'pry'
require 'open-uri' # this dependency is in deal.rb in self.scrape_woot
require_relative "oil/version"

#the below code can be commented (deleted out) becayse the other code acts as the code that links everything together
#module DailyDeal
  # Your code goes here...
#end
require_relative './oil/deal'
require_relative './oil/cli'
