class TitlesController < ApplicationController
  def index
    @titles = Title.order(:name) # Load all titles ordered by name.
  end
  # Automatically load the app/views/titles/index.html.erb

  def show
    @title = Title.find(params[:id]) # Load title mentioned by id in the route.
  end
  # Automatically load the app/views/titles/show.html.erb

  def new
    @title = Title.new
  end
  # Automatically load the app/views/titles/new.html.erb

  def create
    @title = Title.new(title_params)

    if @title.save # If the validation pass
      redirect_to @title # Redirect to show action for this title
    else # If the validation fail
      render :new #Render the view associated with the new action.
    end
  end
  # This action does not have an associated view!

  private

  def title_params
    params.require(:title).permit(:name)
  end
end
