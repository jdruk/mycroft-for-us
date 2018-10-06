module ApplicationHelper
	def is_current_page?(path)
		'active' if current_page?(path)
	end
end
