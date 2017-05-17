class Cup
  def initialize(amount_of_coffee = 8, maximum_capacity = 12)
    @amount_of_coffee = amount_of_coffee
    @maximum_capacity = maximum_capacity
  end

  def sip!(drank)
      @drank = drank
    new_amount = @amount_of_coffee - @drank
    if new_amount > 0
      "Sipped #{@drank}oz, #{new_amount}oz left in cup"
    else
      "Hey! You need a refill!!!"
    end
  end

  def spill!
    @drank = 0
    "Oh no! #{@amount_of_coffee}oz spilled, #{@drank}oz left in cup."
  end

  def refill!
    @refill = @maximum_capacity - 2
    "Refill: #{@refill}oz, Maximum Capacity: #{@maximum_capacity}oz"
  end

  def drinking
    "Amount in Cup: #{@amount_of_coffee}oz, Maximum Capacity: #{@maximum_capacity}oz"
  end
end

starbucks = Cup.new(8, 10)
puts starbucks.sip!(6)
puts starbucks.spill!
puts starbucks.refill!
puts starbucks.drinking
