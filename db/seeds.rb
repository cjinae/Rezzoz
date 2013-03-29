# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# category_names = ["Italian", "Japanese", "Fusion", "Korean", "Mexican", "French", "Indian", "Steakhouse"]
# 	category_names.each do |name|
# 		Category.create!(
# 			:categories => name) 
# 	end

restaurant_opts = [{:name =>"Union", :categories => ["French"]}, 
					{:name => "Burrito Boys", :categories => ["Mexican"]},
					{:name => "Kimchi", :categories => ["Korean"]},
					{:name => "Oui", :categories => ["French"]},
					{:name => "McDonalds", :categories => ["FastFood"]}
				]

restaurant_opts.each do |opts|
	#restaurant = Restaurant.create!(:name => opts[:name])
	restaurant = Restaurant.create! opts.slice(:name)
		opts [:categories].each do |name|
			category = Category.where(:name => name).first_or_create    #this replaces having to create categories only
			restaurant.categories << category
		end
	end

puts "hello, the seed worked"