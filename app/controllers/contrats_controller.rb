class ContratsController < ApplicationController
  before_action :set_contrat, only: [:show, :edit, :update, :destroy] 
  
  def index
    @contrats = Contrat.all 
  end

  def show
  end

  def new
    @contrat = Contrat.new
  end

  def create
    @contrat = Contrat.new(contrat_params)
    if @contrat.save
      redirect_to contrat_path(@contrat)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @contrat.update(contrat_params)
    redirect_to contrat_path(@contrat)
  end

  def destroy
    @contrat.destroy
    redirect_to contrats_path
  end

  private
  def contrat_params
    params.require(:contrat).permit(:numero,:date_depart, :date_retour)
  end

  def set_contrat
    @contrat = Contrat.find(params[:id])
  end
end
