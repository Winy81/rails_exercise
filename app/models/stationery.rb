class Stationery < ApplicationRecord

	validates_presence_of :name, message: "Name can't be blank"
	validates_presence_of :product_code, message: "Product Code can't be blank"

end
