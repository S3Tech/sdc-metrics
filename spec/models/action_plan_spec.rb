require 'rails_helper'
require 'faker'

RSpec.describe ActionPlan, type: :model do


  action_plan = ActionPlan.new 

  it "is valid with valid attributes" do
    expect(ActionPlan.new).to be_valid
  end

  it "is valid with valid attributes" do
    action_plan.agent = Faker::Name.name 
    action_plan.qcm = Faker::Name.name
    action_plan.date = DateTime.now
    action_plan.specific_behavior = Faker::Lorem.sentence
    action_plan.measurable = Faker::Lorem.sentence
    action_plan.action = Faker::Lorem.sentence
    action_plan.relevant = Faker::Lorem.sentence
    action_plan.timebound = Faker::Lorem.sentence
    action_plan.why = Faker::Lorem.sentence
    expect(action_plan).to be_valid
  end
end
