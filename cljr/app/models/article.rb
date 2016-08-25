class Article < ActiveRecord::Base
	belongs_to :category
	validates :name, presence: true
	validates :description, presence: true

	def title_price
		"#{self.name}  $#{self.price}"
	end

	def generate_link
		if !self.link
			all_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
			self.link = ""
			7.times do
				self.link << all_chars[rand(0..35)]
			end
		end
		self.link
	end
end