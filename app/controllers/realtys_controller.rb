class RealtysController < ApplicationController
  def index
    @realtys = Realty.all
  end
end
