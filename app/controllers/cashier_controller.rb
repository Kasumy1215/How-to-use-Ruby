
class CashierController < ApplicationController
	def index
	end
	def order
		if request.post? then
			@title = 'order'
			@msg = 'you typed: ' + params['input1'] + '.'
			@value = params['input1']
			@number = 'type number'
		else
			@title = 'Select the menu'
			@msg = 'type text'
			@value = ''
			@number = 'type number'
		end

	end

# food1 = Food.new(name: "Negima", price: 140)
# food2 = Food.new(name: "Seseri", price: 140)

# drink1 = Drink.new(name: "Premium Moltz", price: 600)
# drink2 = Drink.new(name: "Asahi Super DRY", price: 500)

# menus = [food1, food2, drink1, drink2]

# index = 0
# menus.each do |menu|
#   puts "#{index}. #{menu.info}"
#   index += 1
# end

# puts "--------------"
# puts "Select the menu"
# order = gets.chomp.to_i

# selected_menu = menus[order]
# puts "You selected: #{selected_menu.name}"

# puts "Input the number(Buy 3 discount JPY100)"
# count = gets.chomp.to_i

# puts "Total : JPY#{selected_menu.get_total_price(count)}"	

end