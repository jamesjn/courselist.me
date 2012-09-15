require 'spec_helper'

describe Course do
  it "can be saved" do
    course = FactoryGirl.create(:course)
    course.save!.should == true
  end
  it "has attributes that can be saved" do
    course = FactoryGirl.create(:course)
    course.video.should == "e0WKJLovaZg"
    course.preview_link.should == "https //class.coursera.org/ml/lecture/preview"
    course.video.should == "e0WKJLovaZg"
    course.university.should == "stanford"
    course.description.should == "Learn about the most effective machine learning techniques, and gain practice implementing them and getting them to work for yourself."
    course.social_link.should == "https//www.coursera.org/course/ml" 
    course.instructor.should == "Andrew Ng, Associate Professor"
    course.categories.should == ["Statistics, Data Analysis, and Scientific Computing", "Computer Science Artificial Intelligence, Robotics, Vision"]
    course.name.should == "Machine Learning"
    course.start_date.should == ["23 April 2012", "20 August 2012"]
    course.home_link.should == ["https//class.coursera.org/ml/", "https//class.coursera.org/ml-2012-002/"]
    course.duration.should == ["10 weeks", "10 weeks"]
    course.small_icon.should == "https//s3.amazonaws.com/coursera/topics/ml/small-icon.png"
  end
end
