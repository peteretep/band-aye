class ApplicationController < ActionController::Base
  before_action :authenticate_member!

  def current_ability
    @current_ability ||= Ability.new(current_member)
  end
end
