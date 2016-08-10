class MrvesController < ApplicationController

  #before_action :get_mrves, only: [:show, :edit, :update, :destroy]
  before_action :get_mrves, only: [:edit, :update, :destroy]
  before_filter :get_developer

  private def get_mrves
        @mrf = Mrf.find(params[:id])
  end

  private def get_developer
    if Developer.exists?(params[:developer_id])
      @developer = Developer.find(params[:developer_id])
    end
  end

  private def mrf_params
    # params.require(:mrf).permit(:mrf_number, :developer_id, :pss_id, :hours)
    params.require(:mrf).permit(:mrf_number, :developer_id, :pss_id, :description, :asset_updates, :defect_counter, :moved)
  end

  def index

    # if params[:was_moved] && params[:was_moved] != 'mrves'
    #   #@developer = Developer.was_moved
    #   @mrfs = Mrf.wasMoved
    # else
     #render plain: params
      if params[:developer_id]
        @mrfs = @developer.mrves
        # redirect_to :action => :index
        render 'mrf_by_developer'
      else
        @mrfs = Mrf.all
        respond_to do |format|
          format.html
          format.json { render json: @mrfs }
        end
      end
  end

  def show
    if(@developer.blank? == false)
      #render plain: params
      #@mrf = @developer.mrves.find(params[:id])
      # if(@developer.mrves.find(params[:id]).valid?)
      #@variable = @developer.mrves.find_by(mrf_number: '1233')
      @variable = @developer.mrves.find_by(:mrf_number => params[:id])
      #render json: @variable
      if(@variable.blank? == false)
        @mrf = @developer.mrves.find(params[:id])
      else
        flash[:notice] = 'Mrf no asociado con el usuario'
        redirect_to :action => :index
      end
    else
      @mrf = Mrf.find(params[:id])
    end
  end

  def new
    @mrf = Mrf.new
    @developers = Developer.all
    @psses = Pss.all
  end

  def create
    if @developer.blank?
      @mrf = Mrf.new(mrf_params)
      @developers = Developer.all
    else
      @mrf = @developer.mrves.new(mrf_params)
    end

    if  @mrf.save
      flash[:notice] = "El MRF se creo con éxito"
      redirect_to mrf_path(@mrf)
    else

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
    #render plain: params
    #render plain: params[:mrf].inspect
    @mrf.assign_attributes(mrf_params)
    #if @mrf.valid?
    @helper =  Mrf.new(mrf_params)
    # if @helper.valid? || @mrf.mrf_number === @helper.mrf_number
    if @mrf.mrf_number === @helper.mrf_number || @helper.valid?

      @mrf.update(mrf_params)
      flash[:notice] = "El MRF se actualizo con éxito"
      redirect_to mrf_path(@mrf)
    else
      #render plain: @mrf.errors.full_messages
      @developers = Developer.all
      @psses = Pss.all
      render 'edit'
      #render json: @mrf
    end
  end

  def destroy
    @mrf.destroy
    flash[:notice] = "El Mrf se elimino satisfactoriamente"
    redirect_to mrves_path
  end
end
