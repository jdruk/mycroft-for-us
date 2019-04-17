class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  	# Logs
	is_impressionable :counter_cache => true
end
