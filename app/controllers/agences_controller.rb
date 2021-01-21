class AgencesController < ApplicationController
  before_action :set_agence, only: [:show, :edit, :update, :destroy] 

  def index
    @agences = Agence.all 
  end

  def show
  end

  def new
    @agence = Agence.new
  end

  def create
    @agence = Agence.new(agence_params)
    if @agence.save
      redirect_to agence_path(@agence)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @agence.update(agence_params)
    redirect_to agence_path(@agence)
  end

  def destroy
    @agence.destroy
    redirect_to agences_path
  end

  private
  def agence_params
    params.require(:agence).permit(:libelle, :email, :telephone, :adresse, :nb_voiture)
  end

  def set_agence
    @agence = Agence.find(params[:id])
  end

end
