Order.transaction do
  (1..100).each do |i|
    Order.create(name: "Customer #{i}", address: "address: #{i} Main Street", 
                 email: "customer-#{i}@exmaple.com", pay_type: "Check")
  end
end
