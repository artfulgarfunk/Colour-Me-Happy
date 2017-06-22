require 'date'

class Result < ApplicationRecord
  attr_accessor :colour, :date, :time, :noun, :url

  def initialize(colour,noun,url)
    @colour = colour
    @noun = noun
    @url = url
    @date = format_date
    @time = format_time
  end

  def format_date
    date = Time.new
    date = date.day.to_s + "/" + date.month.to_s + "/" + date.year.to_s
  end

  def format_time
    time = Time.new
    time = time.hour.to_s + ":" + time.min.to_s
  end
end
