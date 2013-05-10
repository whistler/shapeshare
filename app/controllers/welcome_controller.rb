class WelcomeController < ApplicationController
  def index
    @designs = Design.all.order("download_count DESC")
  end
end
