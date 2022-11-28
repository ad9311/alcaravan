class LevelsController < ApplicationController
  before_action :authenticate_user!

  def index
    @levels = current_user.levels
  end

  def download_pdf
    require 'open-uri'
    url = params[:url]
    file_name = params[file_name]
    data = open(url).read
    send_data data, :disposition => 'attachment', :filename=>"#{file_name}.pdf"
  end
end
