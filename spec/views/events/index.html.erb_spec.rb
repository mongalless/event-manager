require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :title => "Event", 
        :start_date => Date.today.to_s,
        :review_date => 1.week.from_now.to_s,
        :end_date => 2.week.from_now.to_s,
        :tags => "#vendor #top_priority #developing ",
        :completed => true
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :title => "Event", :count => 9
    assert_select "tr>td", :start_date => Date.today.to_s, :count => 9
    assert_select "tr>td", :review_date => 1.week.from_now.to_s, :count => 9
    assert_select "tr>td", :end_date => 2.week.from_now.to_s, :count => 9
    assert_select "tr>td", :tags => "#vendor #top_priority #developing ", :count => 9
    assert_select "tr>td", :completed => true, :count => 9
  end
end
