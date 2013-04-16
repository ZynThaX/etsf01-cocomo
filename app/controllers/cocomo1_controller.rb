class Cocomo1Controller < ApplicationController

  # GET /cocomo
  # GET /cocomo.json
  def index

    @ratings = RATINGS
    @rating_headers = RATING_HEADERS
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end