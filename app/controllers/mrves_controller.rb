class MrvesController < ApplicationController

  before_action :get_mrves, only: [:show, :edit, :update, :destroy]

  private def get_mrves
        @mrf = Mrf.find(params[:id])
  end

  private def mrf_params
    params.require(:mrf).permit(:mrf_number, :developer_id, :pss_id, :hours)
  end

  def index
    @mrfs = Mrf.all
    respond_to do |format|
      format.html
      format.json { render json: @mrfs }
    end
  end

  def show
  end

  def new
    @mrf = Mrf.new
  end

  def create
  end

  def edit
    #@developers = Developer.scoped
    @developers = Developer.all
    @psses = Pss.all
  end

  def update
    #render plain: params[:mrf].inspect
    if @mrf.update(mrf_params)
      flash[:notice] = "El MRF se actualizo con éxito"
      redirect_to mrf_path(@mrf)
    else
      render 'edit'
    end
  end

  def destroy
  end
end
