require 'spec_helper'

describe User do

  it "is named Ash" do
    user = FactoryGirl.create(:user)
    user.name.should == "Ash"
  end

  it "is invalid without required attributes" do
    attribs = %w{name email password password_confirmation remember_me}
    attribs.each do |attrib|
      FactoryGirl.build(:user, attrib => nil).should_not be_valid
    end
  end

  it "with no name raises validation error" do
    expect{subject.save!}.to raise_error(Mongoid::Errors::Validations)
  end

  context "user with information correctly filled out" do
    subject { FactoryGirl.create(:user) }
    it "should have attributes set" do
      subject.name.should == "Ash"
      subject.email.should == "ash@ash.com"
      subject.password.should == "mypassword"
      subject.password_confirmation.should == "mypassword"
      subject.remember_me.should == "yes"
    end

    it "should not save cases for email addresses" do
      user_that_entered_cased_email = FactoryGirl.create(:user, email: 'AsH@ASH.com')
      user_that_entered_cased_email.email.should == "ash@ash.com"
    end

    it "should be savable" do
      subject.save!.should == true
    end

  end

end
