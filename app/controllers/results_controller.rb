require 'rest-client'
require 'json'

class ResultsController < ApplicationController

  @@history = Array.new

  def index
    @colour = params[:colour]
    @random_noun = params[:noun]
    @result = Result.new(@colour,@random_noun,'URL')
    @data = image_urls
    @@history.push(@result)
    @search_history = @@history.reverse
  end

  def image_urls
    response = RestClient.get("http://pixabay.com/api/?key=5686898-4675a500add22377121c95200&q=" + @colour.to_s + "+" + @random_noun.to_s + "&image_type=photo")
    ruby_response = JSON.parse(response)
    data = []
    data.push(ruby_response["hits"][0]["webformatURL"])
    data.push(ruby_response["hits"][1]["webformatURL"])
    data.push(ruby_response["hits"][2]["webformatURL"])
    data.push(ruby_response["hits"][3]["webformatURL"])
    data.push(ruby_response["hits"][4]["webformatURL"])
    data
  end

end
