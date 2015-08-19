class Producto < ActiveRecord::Base
	belongs_to :user
	after_create :save_categories

	has_attached_file :cover, styles: {medium: "800x800"}
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/


	#Custom
	def categories=(value)
		@categories = value
	end

	private
	def save_categories
		@categories.each do |category_id|
			HasCategory.create(category_id: category_id,producto_id: self.id)
		end
	end

end
