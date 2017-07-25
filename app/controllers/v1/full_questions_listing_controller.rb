class V1::QuestionsController < ApplicationController
  def index
    FullQuestionsListing.all
  end

end
