class CocomoController < ApplicationController

  # GET /cocomo
  # GET /cocomo.json
  def index
    @ratings = RATINGS
    @rating_headers = RATING_HEADERS
      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @departments }
    end
  end


end