class Transfer
  # your code here
  attr_accessor :status
  attr_reader :sender, :receiver, :transfer_amount
  
  def initialize(sender, receiver, status = "pending", transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @transfer_amount = transfer_amount
  end
  
end
