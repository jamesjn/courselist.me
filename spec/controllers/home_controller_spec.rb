require 'spec_helper'

describe HomeController do
  render_views

  describe "GET #index" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "sets users" do
      User.should_receive(:all).and_return(users = mock)
      get 'index'
      assigns(:users).should == users
    end

    it "renders index" do
      get 'index'
      response.should render_template 'index'
    end

    it "renders users" do
      FactoryGirl.create(:user)
      get 'index'
    end

  end

end
