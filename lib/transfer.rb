class Transfer
  # your code here
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender, receiver, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if valid?
      receiver.deposit(self.amount)
      sender.balance -= self.amount
      self.status = "complete"
    else
      "Transaction rejected. Please check your account balance."
      self.status = "rejected"
    end
  end
  
end
