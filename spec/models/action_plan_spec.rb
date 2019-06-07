require 'rails_helper'

RSpec.describe ActionPlan, type: :model do

  it "is valid with valid attributes" do
    expect(ActionPlan.new).to be_valid
  end
end
