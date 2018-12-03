class TitlesController < ApplicationController
  def index
    @titles = Title.order(:name) # Load all students ordered by name.
  end
  # Automatically load the app/views/titles/index.html.erb

  def show
    @title = Title.find(params[:id]) # Load student mentioned by id in the route.
  end
  # Automatically load the app/views/titles/show.html.erb
end
