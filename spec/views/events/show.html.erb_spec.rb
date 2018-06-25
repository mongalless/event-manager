require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "Event 1", 
      :start_date => Date.today.to_s,
      :review_date => 1.week.from_now.to_s,
      :end_date => 2.week.from_now.to_s,
      :tags => "#vendor #top_priority #developing ",
      :completed => true
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Event 1/)
    # expect(rendered).to match("/"+Date.today.to_s+"/")
    # expect(rendered).to match("/"+1.week.from_now.to_s+"/")
    # expect(rendered).to match("/"+2.week.from_now.to_s+"/")
    expect(rendered).to match(/#vendor #top_priority #developing /)
    expect(rendered).to match(/true/)
  end
end
