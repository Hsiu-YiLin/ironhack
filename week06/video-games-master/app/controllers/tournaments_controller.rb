class TournamentsController < ApplicationController
  def index
    render(:index)
  end

  def display
  	render tournamentsIndex
  end
end
