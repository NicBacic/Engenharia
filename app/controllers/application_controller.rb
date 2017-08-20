class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    a = 2
    b = 3
    c = a + b
    d = a * b
    render html: "Soma de a + b = #{c} e o valor do produto a * b = #{d}"
  end
end
