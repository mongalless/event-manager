require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      title: "Event 1", 
      start_date: Date.today.to_s,
      review_date: 1.week.from_now.to_s,
      end_date: 2.week.from_now.to_s,
      tags: "#vendor #top_priority #developing ",
      completed: true
    ))
  end

  it "renders edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input[name=?]", "event[title]"

      #assert_select "input[name=?]", "event[start_date]"

      #assert_select "input[name=?]", "event[review_date]"

      #assert_select "input[name=?]", "event[end_date]"

      assert_select "input[name=?]", "event[tags]"

      assert_select "input[name=?]", "event[completed]"
    end
  end
end
