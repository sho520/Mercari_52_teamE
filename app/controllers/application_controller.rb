class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from ActionController::RoutingError, with: :render_404
  rescue_from Exception, with: :render_500

  def render_404
  render template: 'errors/error_404', status: 404, layout: 'application', content_type: 'text/html'
  end

  def render_500
  render template: 'errors/error_500', status: 500, layout: 'application', content_type: 'text/html'
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :family_name, :first_name, :family_name_kana, :first_name_kana, :nickname, :birth_year, :birth_month, :birth_day, :postcode, :prefecture_code, :address_city, :phone, :prefecture_id, :image_url])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :family_name, :first_name, :family_name_kana, :first_name_kana, :nickname, :birth_year, :birth_month, :birth_day, :postcode, :prefecture_code, :address_city, :address_building, :phone, :prefecture_id, :profile, :image_url])
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