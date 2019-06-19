class AgentsController < ApplicationController
  def index
  end

  def new
    @agent = Agent.new
  end

  def create
    agent = Agent.new(agent_params)
    if agent.save
      flash[:notice] = "Action Plan successfully created"
      redirect_to agents_path
    else
      flash[:error] = "Error"
      redirect_to :back
    end
  end

  private

  def agent_params
    params.require(:agent).permit(:first_name, :last_name, :status)
  end
end
