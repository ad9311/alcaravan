class PresentationsController < ApplicationController
  def index; end

  def paginate
    @page = params[:page]

    respond_to do |format|
      format.turbo_stream
    end
  end
end
