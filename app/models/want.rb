class Want < Ownership
	def self.ranking
		self.group(:item_id).order('count_item.id DESC').limit(10).count(:itme_id)
	end
end
