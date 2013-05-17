class SearchController < ApplicationController
  def index
    @designs = Design.find_with_index(params[:query])
  end
end
