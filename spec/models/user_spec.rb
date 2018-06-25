require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(email: "hitstalker7@gmail.com", 
                                password: "IV0_|*4$$VV012|)",
                                sign_in_count: 0,
                                created_at: Date.today,
                                updated_at: Date.today)
          }

  describe "validating User model with attributes" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
  end
end
