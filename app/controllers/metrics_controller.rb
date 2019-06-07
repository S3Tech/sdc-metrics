class MetricsController < ApplicationController
  def index
  end

  def action_plan
  end

  def create_action_plan
    ActionPlan.create(action_plan_params)
  end

  private

  def action_plan_params
    params.require(:create_plan).permit(:qcm, :date, :agent, :specific_behavior, :measurable,
                                        :action, :relevant, :timebound, :why)
  end
end
