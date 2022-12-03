class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show]

  def index
    @comments = Comment.all
  end

  def show
    redirect_to(comments_path)
  end

  def new
    @comment = Comment.new
  end

  def edit; end

  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to(comments_path) }
      else
        format.html { render(:new, status: :unprocessable_entity) }
      end
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:user_id, :course_id, :content)
  end
end
