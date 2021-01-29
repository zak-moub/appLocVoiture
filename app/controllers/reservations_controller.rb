class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy] 
  
  def index
    @reservations = Reservation.all 
  end

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path
  end

  def facture 
    #generate_facture()
    FactureWorker.perform_async()
    render text: "REQUEST TO GENERATE A FACTURE ADDED TO THE QUEUE"
  end

  private
  def reservation_params
    params.require(:reservation).permit(:date_reservation, :compteur_km, :montant, :montant_reduit)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def generate_facture
    sleep 30
  end 

end
