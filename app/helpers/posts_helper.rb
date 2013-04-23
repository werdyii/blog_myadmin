module PostsHelper
	def perex(text)
		truncate strip_tags(text), :length => 200
	end
end