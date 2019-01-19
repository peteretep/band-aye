class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def gig_signup
    byebug
  end

  def gig_signup_params
    params.require(:gig_signup).permit(:signup)
  end
end
