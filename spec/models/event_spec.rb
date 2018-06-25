require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { described_class.new(title: "Event 1", 
                                start_date: Date.today,
                                review_date: 1.week.from_now,
                                end_date: 2.week.from_now,
                                tags: "#vendor #top_priority #developing ",
                                completed: true) 
          }

  describe "validating Event model with attributes" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an start date" do
      subject.start_date = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an review date" do
      subject.start_date = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an end date" do
      subject.start_date = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an tags" do
      subject.tags = nil
      expect(subject).to_not be_valid
    end

    it "is valid while not completed" do
      subject.completed = nil
      expect(subject).to be_valid
    end
  end
end
