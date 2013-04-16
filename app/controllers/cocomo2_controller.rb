class Cocomo2Controller < ApplicationController

  # GET /cocomo
  # GET /cocomo.json
  def index
    @sf = SF
    @em = EM
    @rating_headers = RATING_HEADERS
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end