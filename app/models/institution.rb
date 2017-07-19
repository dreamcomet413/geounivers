class Institution < ApplicationRecord
	scope :find_by_school, -> (school) { where('name = ?', school) }
	
end
