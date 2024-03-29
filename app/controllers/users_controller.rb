class UsersController < ApplicationController

  def show
    @created_events = current_user.created_events.all
  end
end
