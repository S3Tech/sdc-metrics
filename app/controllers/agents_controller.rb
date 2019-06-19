class AgentsController < ApplicationController
  def index
    @agents = Agent.all
  end

  def new
    @agent = Agent.new
  end

  def create
    agent = Agent.new(agent_params)
    if agent.save
      flash[:notice] = "Agent successfully created"
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
