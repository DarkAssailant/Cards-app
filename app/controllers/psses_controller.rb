class PssesController < ApplicationController

  before_action :get_pss, only: [:show, :edit, :update, :destroy]

  def index
    @psses = Pss.all
    respond_to do |format|
      format.html
      format.json { render json: @psses }
    end
  end

  def show
  end

  private def pss_params
    params.require(:pss).permit(:name)
  end


  private def get_pss
        @pss = Pss.find(params[:id])
  end

  def edit
  end

  def create
    #render plain: params[:developer].inspect
    @pss = Pss.new(pss_params)
    if @pss.save
      flash[:notice] = "El pss se creo con éxito"
      redirect_to pss_path(@pss)
    else
      render 'new'
    end

  end

  def new
    @pss = Pss.new
  end

  def show
  end

  def update
    if @pss.update(pss_params)
      flash[:notice] = "El pss se actualizo con éxito"
      redirect_to pss_path(@pss)
    else
      render 'edit'
    end
  end

  # DELETE /developers/3
  def destroy
      @pss.destroy
      flash[:notice] = "El pss se elimino satisfactoriamente"
      redirect_to psses_path
  end

end
