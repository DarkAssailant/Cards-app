class DevelopersController < ApplicationController 
  
  before_action :get_developer, only: [:edit, :update, :destroy]
  before_action :check_auth, only=> [:edit, :update, :destroy]

  def get_developer
        @developer = Developer.find(params[:id])
  end
  
  def check_auth
    if session[:developer_id] != @Developer.developer_id
      flash[:notice] = "Sorry, you can't edit this developer"
      redirect_to(developers_path)
    end
  end

  def edit
    
  end

  def update
   
  end

  def destroy
    
  end
  
end