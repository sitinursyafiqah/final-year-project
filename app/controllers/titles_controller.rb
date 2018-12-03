class TitlesController < ApplicationController
  def index
    @titles = Title.order(:name) # Load all titles ordered by name.
  end
  # Automatically load the app/views/titles/index.html.erb

  def show
    @title = find_title
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

  def edit
    @title = find_title
  end
  # Automatically load the app/views/titles/edit.html.erb

  def update
    @title = find_title

    if @title.update(title_params) # If the validation pass
      redirect_to @title # Redirect to the show action for this title.
    else # If the validation fail
      render :edit # Render the edit view to show the form again and display validation errors.
    end
  end
  # No view associated with this action we either redirector render.

  def destroy
    @title = find_title
    @title.destroy

    redirect_to titles_url # Redirects to the titles index page.
  end

  private

  def find_title
    Title.find(params[:id]) # Load title mentioned by id in the route.
  end

  def title_params
    params.require(:title).permit(:name)
  end
end
