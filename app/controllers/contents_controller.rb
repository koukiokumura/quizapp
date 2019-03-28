class ContentsController < ApplicationController

  before_action :ranking

  def index
    @contents = Content.all
  end

  def new
    @content = Content.new
    @content.choices.build
  end

  def create
    @content = Content.new(content_params)

    if @content.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @content = Content.find(params[:id])
    @choices = Choice.where(content_id: params[:id])
  end

  def judge
    content_id = params[:content_id]
    if  params[:format] == "true"
      redirect_to new_content_review_path(content_id)
    else
      render 'incorrect'
    end
  end

  def incorrect
    @content = Content.find(params[:id])
  end

  def ranking
     content_ids = Review.group(:content_id).order('count_content_id DESC').limit(5).count(:content_id).keys
    @ranking = content_ids.map { |id| Content.find(id) }
  end

  def edit

  end

  private
  def content_params
    params.require(:content).permit(:question, :image, :text,choices_attributes: [:text, :correct,:image]).merge(user_id: current_user.id)
  end

end

