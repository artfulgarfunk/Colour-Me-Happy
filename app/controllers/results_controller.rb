require 'rest-client'
require 'json'

class ResultsController < ApplicationController
  def index
    @colour = params[:colour]
    result = Result.new
    @random_noun = result.random_noun
    @data = image_urls
  end

  def image_urls
    response = RestClient.get("http://pixabay.com/api/?key=5686898-4675a500add22377121c95200&q=" + @colour + "+" + @random_noun + "&image_type=photo")
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
