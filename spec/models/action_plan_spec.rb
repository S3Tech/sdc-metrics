require 'rails_helper'

RSpec.describe ActionPlan, type: :model do


  action_plan = ActionPlan.new 

  it "is valid with valid attributes" do
    expect(ActionPlan.new).to be_valid
  end

  it "is valid with valid attributes" do
    action_plan.agent = "Bam"
    action_plan.qcm = "Joks"
    action_plan.date = DateTime.now
    action_plan.specific_behavior = "Lorem ipsum"
    action_plan.measurable = "Lorem ipsum"
    action_plan.action = "Lorem ipsum"
    action_plan.relevant = "Lorem ipsum"
    action_plan.timebound = "Lorem ipsum"
    action_plan.why = "Lorem ipsum"
    expect(action_plan).to be_valid
  end
end
