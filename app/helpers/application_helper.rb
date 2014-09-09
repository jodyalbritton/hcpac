module ApplicationHelper
	def current_production
		Production.last
    end
end
