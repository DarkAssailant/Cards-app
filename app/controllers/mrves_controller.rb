class MrvesController < ApplicationController

  before_action :get_mrves, only: [:show, :edit, :update, :destroy]

  private def get_mrves
        @mrf = Mrf.find(params[:id])
  end

  private def mrf_params
    # params.require(:mrf).permit(:mrf_number, :developer_id, :pss_id, :hours)
    params.require(:mrf).permit(:mrf_number, :developer_id, :pss_id, :description, :asset_updates, :defect_counter, :moved)
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
    @developers = Developer.all
    @psses = Pss.all
  end

  def create
    @mrf = Mrf.new(mrf_params)
    if @mrf.save
      flash[:notice] = "El MRF se creo con éxito"
      redirect_to mrf_path(@mrf)
    else
      @developers = Developer.all
      @psses = Pss.all
      render 'new'
    end
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
      #render plain: @mrf.errors.full_messages
      @developers = Developer.all
      @psses = Pss.all
      render 'edit'
      #render json: @mrf
      #render plain: @mrf.developer
    end
  end

  def destroy
    @mrf.destroy
    flash[:notice] = "El Mrf se elimino satisfactoriamente"
    redirect_to mrves_path
  end
end
