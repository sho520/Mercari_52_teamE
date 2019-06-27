class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :family_name, :first_name, :family_name_kana, :first_name_kana, :nickname, :birth_year, :birth_month, :birth_day, :postcode, :prefecture_code, :address_city, :phone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :family_name, :first_name, :family_name_kana, :first_name_kana, :nickname, :birth_year, :birth_month, :birth_day, :postcode, :prefecture_code, :address_city, :address_building, :phone, :profile])
  end

  def create
  @places = Place.new(user_id: @user.id, prefecture_id: params[:prefecture_id])
  end

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end