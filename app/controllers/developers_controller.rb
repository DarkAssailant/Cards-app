class DevelopersController < ApplicationController
  #before_filter :get_developer #se asegura que  antes de entrar a la acción obtengamos el developer
  #entonces en la accion de show se asegura que lo que busque sea en este developer

  before_action :get_developer, only: [:show, :edit, :update, :destroy]
  #before_action :check_auth, only: [:edit, :update, :destroy]

  def index
    @developers = Developer.all
    respond_to do |format|
      format.html
      format.json { render json: @developers }
    end
  end

  def show
  end


  private def get_developer
        @developer = Developer.find(params[:id])
  end


  private def developer_params
    params.require(:developer).permit(:soid,:name)
  end

  def check_auth
    if session[:developer_id] != @Developer.developer_id
      flash[:notice] = "Sorry, you can't edit this developer"
      redirect_to(developers_path)
    end
  end

  def new
    @developer = Developer.new
  end
  # GET /developers/3


  # POST /developers/create
  def create
    #render plain: params[:developer].inspect
    @developer = Developer.new(developer_params)
    if @developer.save
      flash[:notice] = "El desarrollador se creo con éxito"
      redirect_to developer_path(@developer)
    else
      render 'new'
    end

  end

  def edit

  end

  # PUT /developers/3
  def update
    if @developer.update(developer_params)
      flash[:notice] = "El desarrollador se actualizo con éxito"
      redirect_to developer_path(@developer)
    else
      render 'edit'
    end
  end

  # DELETE /developers/3
  def destroy

  end





end
