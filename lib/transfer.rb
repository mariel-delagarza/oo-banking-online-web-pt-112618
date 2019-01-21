class Transfer
  attr_accessor :status, 
  attr_reader :sender, :receiver, :transfer_amount

  def initialize(sender, receiver, transfer_amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @transer_amount = 50
  end

  def valid?
    sender.valid? && receiver.valid?
  end



end
