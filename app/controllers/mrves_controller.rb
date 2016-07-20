class MrvesController < ApplicationController

  before_action :get_mrves, only: [:show, :edit, :update, :destroy]

  private def get_mrves
        @mrf = Mrf.find(params[:id])
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
  end

  def update
  end

  def destroy
  end
end
