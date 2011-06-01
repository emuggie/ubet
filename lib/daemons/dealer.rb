#!/usr/bin/env ruby

# You might want to change this
ENV["RAILS_ENV"] ||= "production"

require File.dirname(__FILE__) + "/../../config/application"
Rails.application.require_environment!

$running = true
Signal.trap("TERM") do 
  $running = false
end

current=0
@deal=DealHistory.all
if not @deal
  current=1
else
  current=@deal[0].id
end

while($running) do 
  @deal=DealHistory.find  :minimum=>:expire,:result=>"betting"
  if @deal
    if DateTime.now >= @deal.expire
      @deal.result="pending"
    else
      sleep 10
    end
  else
    sleep 10
  end

end
