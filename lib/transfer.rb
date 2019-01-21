class Transfer
  attr_accessor :status, :sender, :receiver, :transfer_amount

  def initialize(status, sender, receiver, transfer_amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @transer_amount = 50
  end

  def valid?(account1, account2)
    if account1.valid? && account2.valid?
      true
    else
      false
    end
  end



end
