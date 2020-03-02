class OrderController < ApplicationController
  layout 'order'
  price = { "Gyu Kushi" => 140, "Buta Kushi" => 120, "Premium Maltz" => 500, "Green Tea" => 0}

  def initialize
    super
    begin
      @order_data = JSON.parse(File.read("record.txt"))
    rescue
      @order_data = Hash.new
    end
      @order_data.each do |key,obj|
      if Time.now.to_i - key.to_i > 60*60 then
        @order_data.delete(key)
      end
    end
    File.write("record.txt", @order_data.to_json)
  end
  
  def index

    price = { "Gyu Kushi" => 140, "Buta Kushi" => 120, "Premium Maltz" => 500, "Green Tea" => 0}
    if request.post? then
      if params['food'] && params['qt_food'] then
        price = { "Gyu Kushi" => 140, "Buta Kushi" => 120, "Premium Maltz" => 500, "Green Tea" => 0}
        @price = price[params['food']]
        subtotal = params['qt_food'].to_i * price[params['food']]
        @msg = 'You selected ' + params['qt_food'] +' of ' + params['food'] +'. Subtotal price is ' + subtotal.to_json + '.'
      else
        @price = 0
        subtotal = 0
        @msg = 'Please select ...'
      end

      obj = MyData.new(food:params['food'], qt_food:params['qt_food'], price:price[params['food']], subtotal:(params['qt_food'].to_i * price[params['food']]))
      @order_data[Time.now.to_i] = obj
      data = @order_data.to_json
      File.write("record.txt", data)
      @order_data = JSON.parse(data)
    end
  end
end
  
class MyData
  attr_accessor :food
  attr_accessor :qt_food
  attr_accessor :price
  attr_accessor :subtotal

  def initialize food:food, qt_food:qt_food, price:price, subtotal:subtotal
    self.food = food
    self.qt_food = qt_food
    self.price = price
    self.subtotal = subtotal

  end
end
