class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    render layout: 'common'
  end

  def edit
    render layout: 'common'
  end

  def new
    render layout: 'second_application'
  end

  def index
    @user = User.new
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
    render layout: 'common'
  end

  def identification
    render layout: 'common'
  end

  def card
    render layout: 'common'
  end

  def sample
  end

  private
 
    def user_params
      params.require(:user).permit(:postcode, :prefecture_name, :address_city, :address_street, :address_building)
    end

end
