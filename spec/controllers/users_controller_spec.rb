require 'rails_helper'
require 'coveralls'
Coveralls.wear!

RSpec.describe UsersController, type: :controller do

  let(:valid_attributes) {
    {
      username:"Usuario Valido",
      password:"123456",
      email:"usuario@gmail.com"     
    }
  }

  let(:invalid_attributes) {
    {
      username:"1",
      password:"12",
      email:"1" 
    }
  }

  
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      #user = User.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      user = User.create! valid_attributes
      get :show, params: {id: user.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      user = User.create! valid_attributes
      get :edit, params: {id: user.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new User" do
        expect {
          post :create, params: {user: valid_attributes}, session: valid_session
        }.to change(User, :count).by(1)
      end

      it "redirects to the created jogo" do
        post :create, params: {user: valid_attributes}, session: valid_session
        expect(response).to redirect_to(User.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {user: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
          username:"New User",
          password:"123456789",
          email:"usernew@gmail.com" 
        }
      }

      it "updates the requested jogo" do
        user = User.create! new_attributes
        put :update, params: {id: user.to_param, user: new_attributes}, session: valid_session
        user.reload
        expect(user.username).to eql "New User" 
        expect(user.password).to eql "123456789"
        expect(user.email).to eql "usernew@gmail.com"
        #skip("Add assertions for updated state")
      end

      it "redirects to the user" do
        user = User.create! new_attributes
        put :update, params: {id: user.to_param, user: new_attributes}, session: valid_session
        expect(response).to redirect_to(user)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        user = User.create! valid_attributes
        put :update, params: {id: user.to_param, user: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested user" do
      user = User.create! valid_attributes
      expect {
        delete :destroy, params: {id: user.to_param}, session: valid_session
      }.to change(User, :count).by(-1)
    end

    it "redirects to the users list" do
      user = User.create! valid_attributes
      delete :destroy, params: {id: user.to_param}, session: valid_session
      expect(response).to redirect_to(users_url)
    end
  end

  scenario "Adding game to user's wishlist" do 
    
    visit login_path
    user = FactoryBot.create(:user)
    user.wishlist = Wishlist.new(user_id: user.id)
    fill_in "username_field", :with=> user.username
    fill_in "password_field", :with=> user.password
    find_button("submit_login").click
    expect(current_path).to eq home_path

    jogo = FactoryBot.create(:jogo)
    
    visit jogos_path

    expect(current_path).to eq jogos_path

    visit jogo_path(jogo.id)

    expect(current_path).to eq jogo_path(jogo.id)
    puts html

    find_button('add_to_list_button').click

    expect(user.wishlist.jogo.count).to be > 0

    expect(current_path).to eq(user_path(user.id))
    
  end

  scenario "Visiting user wishlist that now has one game" do

    visit login_path
    #puts html
    @user = FactoryBot.create(:user)
    @user.wishlist = Wishlist.new(user_id: @user.id)

    fill_in "username_field", :with=> @user.username
    fill_in "password_field", :with=> @user.password
    find_button("submit_login").click
    expect(current_path).to eq home_path
    
    current_user = @user

    @jogo = FactoryBot.create(:jogo)
    
    #???????????????????????????????????????????? PLEASE REVIEW THIS CODE
    #controller.add_jogo_to_wishlist
    
    #visit users_path
    #puts html
    #expect(current_path).to eq user_path(@user.id)
    
   
    #click_link("a#wishlist_link", visible: false)

    #expect(current_path).to eq user_wishlist_path(@user,@user.wishlist.id)

  end

end
