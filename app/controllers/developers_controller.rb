class DevelopersController < ApplicationController
  #before_filter :get_developer #se asegura que  antes de entrar a la acción obtengamos el developer
  #entonces en la accion de show se asegura que lo que busque sea en este developer

  before_action :get_developer, only: [:show, :update, :destroy, :edit]
  #before_action :check_auth, only: [:edit, :update, :destroy]

  def index
    @developers = Developer.all
    respond_to do |format|
      format.html
      format.json { render json: @developers }
    end
  end

  # GET /developers/3
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
    @previous_id = @developer.soid
    # @developer.update(developer_params)
    if @previous_id != developer_params[:soid]
      #lo de bajo es igual al create
      @Developer = Developer.new(developer_params)
      if @Developer.save
        @developer.destroy
        flash[:notice] = "El desarrollador se ha actualizado con éxito"
        redirect_to developer_path(@Developer)
      else
        render 'edit'
        #render plain: @Developer.errors.full_messages
      end

    else
      #render plain: params[:developer].inspect
      #@developer.update({ @previous_id, :name => developer_params.name, :soid => developer_params.soid})
      #render plain: @developer.inspect
      #render plain: developer_params
      #render plain: { @previous_id, :name => developer_params[:name], :soid => developer_params[:soid]}
      #render plain:   " #{@previous_id}, :name => #{developer_params[:name]}, :soid => #{developer_params[:soid]}"
       if @developer.update(developer_params)
         flash[:notice] = "El desarrollador se actualizo con éxito"
         redirect_to developer_path(@developer)
       else
         render 'edit'
       end
    end
  end

  # DELETE /developers/3
  def destroy
      @developer.destroy
      flash[:notice] = "El desarrollador se elimino satisfactoriamente"
      redirect_to developers_path
  end

end
