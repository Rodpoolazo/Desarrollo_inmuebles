class RealtiesController < ApplicationController
  def index
    @realties = Realty.all
  end
end
