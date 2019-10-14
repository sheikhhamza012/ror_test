class HardWorker
  include Sidekiq::Worker

  def perform( )
    p "sending"
    sendM()
  end
  def sendM
    UserMailer.crontest.deliver_now
  end
end
