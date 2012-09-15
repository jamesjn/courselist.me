# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    preview_link "https //class.coursera.org/ml/lecture/preview"
    video "e0WKJLovaZg"
    university "stanford"
    description "Learn about the most effective machine learning techniques, and gain practice implementing them and getting them to work for yourself."
    social_link "https//www.coursera.org/course/ml" 
    instructor "Andrew Ng, Associate Professor"
    categories ["Statistics, Data Analysis, and Scientific Computing", "Computer Science Artificial Intelligence, Robotics, Vision"]
    name "Machine Learning"
    start_date ["23 April 2012", "20 August 2012"]
    home_link ["https//class.coursera.org/ml/", "https//class.coursera.org/ml-2012-002/"]
    duration ["10 weeks", "10 weeks"]
    small_icon "https//s3.amazonaws.com/coursera/topics/ml/small-icon.png"
  end
end
