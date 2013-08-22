namespace :db do
	desc "Fill database with sample Data"
	task populate: :environment do
		creating_categories
		#creating_products
	end
end

def creating_categories
	10.times do |n|
		name = "Category-#{n+1}"
		Category.create(name: name,)
	end
end

# def creating_products
# 	30.times do |p,c|
# 		name = "Product-#{p+1}",
# 		category_id = (c+1),
# 		price = (p*100+50),
# 		description = Faker::Lorem.paragraphs(5)
# 		Product.create(
# 			name: name,
# 			price: price,
# 			description: description,
# 			category_id: category_id
# 		)
# 	end
# end