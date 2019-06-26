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

  def phone
    render layout: 'common'
  end
  
  def address
    @place = Place.new
    @user = User.new
    render layout: 'common'
  end
    
  def purchase
    render layout: 'third_application'
  end
    
  def complete
    render layout: 'third_application'
  end

  def logout
    render layout: 'common'
  end

  def card
    render layout: 'common'
  end

  def mail
    @user = User.new
    render layout: 'common'
  end

  private
 
    def user_params
      params.require(:user).permit(:account_update, keys: [:name, :family_name, :first_name, :family_name_kana, :first_name_kana, :nickname, :birth_year, :birth_month, :birth_day, :postcode, :prefecture_code, :address_city, :address_building, :phone, :prefecture_id])
    end

end
