class ProfilesController < ApplicationController
  def edit
    @profile=User.current_user(params[:id])
  end

end