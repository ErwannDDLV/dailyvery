class RequestsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @requests = Request.all
  end

end
