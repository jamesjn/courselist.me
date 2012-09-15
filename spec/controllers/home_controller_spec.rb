require 'spec_helper'

describe HomeController do
  render_views

  describe "GET #index" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "sets users" do
      Course.should_receive(:all).and_return(courses = mock(:each => nil))
      get 'index'
      assigns(:courses).should == courses
    end

    it "renders index" do
      get 'index'
      response.should render_template 'index'
    end

    it "renders users" do
      FactoryGirl.create(:course)
      get 'index'
    end

  end

end
