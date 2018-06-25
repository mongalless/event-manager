require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :title => "Title",
        :tags => "Tags",
        :completed => false
      ),
      Event.create!(
        :title => "Title",
        :tags => "Tags",
        :completed => false
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
