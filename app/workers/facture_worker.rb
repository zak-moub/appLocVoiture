class ReportWorker
  include Sidekiq::FactureWorker
  sidekiq_options retry: false

  def perform
    puts "SIDEKIQ WORKER GENERATING A FACTURE FOR RESERVATION"
  end 
end