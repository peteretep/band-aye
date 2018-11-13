class HomeController < ApplicationController
  def index
    @gigs_signed_up_to = current_member.gigs
    @gigs = Gig.all
  end
end
