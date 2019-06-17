class UsersController < ApplicationController

  def show
    render layout: 'application'
  end

  def edit
    render layout: 'application'
  end

  def new
    render layout: 'second_application'
  end

  def index
    render layout: 'third_application'
  end

  def phone
    render layout: 'third_application'
  end
  
  def address
    @user = User.new
    render layout: 'third_application'
  end
    
  def purchase
    render layout: 'third_application'
  end
    
  def complete
    render layout: 'third_application'
  end

  def login
    render layout: 'second_application'
  end

  def logout
    render layout: 'application'
  end

  def identification
    render layout: 'application'
  end

  def card
    render layout: 'application'
  end

  private
 
    def user_params
      params.require(:user).permit(:postcode, :prefecture_name, :address_city, :address_street, :address_building)
    end

end
