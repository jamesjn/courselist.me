require 'spec_helper'

describe "home/index" do
  it "renders correct partial" do
    view.should_receive(:start_date).and_return("A Date")
    assign(:courses, [FactoryGirl.create(:course)])
    render
    rendered.should match(/Machine Learning/)
  end
end
