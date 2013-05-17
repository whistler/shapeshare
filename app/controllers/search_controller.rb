class SearchController < ApplicationController
  def index
    @designs = Design.search {fulltext params[:query]}.results
  end
end
