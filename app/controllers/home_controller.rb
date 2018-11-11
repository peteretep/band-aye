class HomeController < ApplicationController
  def index
    @gigs = Gig.all
  end
end
