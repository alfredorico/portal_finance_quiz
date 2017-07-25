class V1::QuestionsListingController < ApplicationController
  def index
    FullQuestionsListing.all
  end
end
