class WelcomeController < ApplicationController
  def index
    @noun = random_noun
  end

  def nouns
    @@nouns = ["man","mountain","state","ocean","country","building","cat","airline","wealth","happiness", "pride","fear","religion","bird","book","phone","rice","snow","water"]
  end

  def random_noun
    nouns[(Random.new.rand(0..20))]
  end

end
