require 'spec_helper'

describe User do

  it "is named Ash" do
    user = User.new(:name => 'Ash')
    user.name.should == "Ash"
  end

  it "is invalid without a name" do
    should_not be_valid
  end

  it "with no name raises validation error" do
    expect{subject.save!}.to raise_error(Mongoid::Errors::Validations)
  end

  it "should be savable if name, email, password, password_confirmation, remember_me" do
    user = User.new(:name => "Ash", :email => "Ash@ash.com", :password => "mypassword", :password_confirmation => "mypassword", :remember_me => "yes")
    user.name.should == "Ash"
    user.email.should == "Ash@ash.com"
    user.password.should == "mypassword"
    user.password_confirmation.should == "mypassword"
    user.remember_me.should == "yes"
    user.save!.should == true
  end

end
