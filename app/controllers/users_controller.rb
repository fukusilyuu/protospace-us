class UsersController < ApplicationController

  def index
    @prototypes = Prototype.all
  end
  def show
    @user = User.find(params[:id])
  end
end
