class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :transfer_amount

  def initialize(sender, receiver, transfer_amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @transfer_amount = 50
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if valid? && sender.balance > transfer_amount && self.status = "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      reject_transfer
    end
  end

  def reverse_transfer
    if valid? && sender.balance > transfer_amount && self.status = "complete"
      sender.balance += amount
      receiver.balance -= amount
      self.status = "reversed"
    else
      reject_transfer
    end
  end


end
