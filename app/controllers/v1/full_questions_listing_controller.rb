class V1::FullQuestionsListingController < ApplicationController
  def index
    FullQuestionsListing.all
  end
end
