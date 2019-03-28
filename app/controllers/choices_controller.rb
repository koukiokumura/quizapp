class ChoicesController < ApplicationController
  def index
    @choices = Choice.find(params[:content_id])
  end


  def create
    Choice.find_or_initialize_by(choices_params)
  end

  private
  def choice_params
    params.require(:choices).permit(:content_id)
  end
end
