class LikesController < ApplicationController
  before_action :like_params, only: %i[create]
  before_action :like_params_on_destroy, only: %i[destroy]

  def create
    @comment = Comment.find_by(id: like_params[:comment_id])
    @like = Like.create(comment_id: @comment.id, user_id: current_user.id) unless @comment.nil?

    respond_to do |format|
      format.turbo_stream
    end
  end

  def destroy
    @like = Like.find_by(id: like_params_on_destroy[:id])
    @comment = @like.comment
    @like.destroy

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def like_params
    params.require(:like).permit(:comment_id)
  end

  def like_params_on_destroy
    params.require(:like).permit(:id)
  end
end
