class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_credential!
  respond_to :html, :json

  protected
  def current_user
    current_credential.user
  end

  def current_city
    current_city_query.()
  end

  def current_city_query
    Cities::CurrentUserCityQuery.new(current_user)
  end
end
