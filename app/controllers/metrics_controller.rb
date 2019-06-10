class MetricsController < ApplicationController
  def index
    @action_plans = ActionPlan.all
  end

  def action_plan
  end

  def create_action_plan
    @action_plan = ActionPlan.new(action_plan_params)

    if @action_plan.save
      flash[:notice] = "Action Plan successfully created"
      redirect_to action_plan_metrics_path
    else
      flash[:success] = "Error"
      redirect_to :back
    end

  end

  private

  def action_plan_params
    params.require(:create_plan).permit(:qcm, :date, :agent, :specific_behavior, :measurable,
                                        :action, :relevant, :timebound, :why)
  end
end
