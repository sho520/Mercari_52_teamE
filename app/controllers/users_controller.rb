class UsersController < ApplicationController

  def show
    render :layout => 'application'
  end

  def edit
    render :layout => 'application'
  end

  def new
    render :layout => 'second_application'
  end

  

end
