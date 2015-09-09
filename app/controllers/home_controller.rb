class HomeController < ApplicationController
  def index
    if params['/'].present?
      @wordnik = Wordnik.word.get_examples(params['/']['word'], :limit => 10, :skip => 10)
    end
  end
end
