require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "Batata", password: "Sokoro", password_confirmation: "Sokoro")
  #  @user = User.new(username: "Noot", password: "Lewt")
  #  @user = User.new(username: "Qisso", password: "Welp")
  end
end
