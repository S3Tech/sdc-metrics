class QcmsController < ApplicationController
  def index
    @qcms = Qcm.all
  end

  def new
  end

  def create
    qcm = Qcm.new(qcm_params)
    if qcm.save
      flash[:notice] = "Action Plan successfully created"
      redirect_to qcms_path
    else
      flash[:success] = "Error"
      redirect_to :back
    end
  end

  private

  def qcm_params
    params.require(:qcm).permit(:first_name, :last_name, :status)
  end

end
