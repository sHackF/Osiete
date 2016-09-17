class HomeController < ApplicationController
  def index
    @gives = Give.all
  end
end
