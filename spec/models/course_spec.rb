require 'spec_helper'

describe Course do
  it "can have a name" do
    course = Course.new(:name => "course1", :school => "mit")
    course.save! 
  end
end
