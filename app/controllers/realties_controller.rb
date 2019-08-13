class RealtiesController < ApplicationController

  before_action :authenticate_user!

  def index
    @realties = Realty.all
  end
end
