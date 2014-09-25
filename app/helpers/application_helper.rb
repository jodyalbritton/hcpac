module ApplicationHelper
	def current_production
		Production.where("start_date <= ? and end_date >= ?",  Date.today, Date.today)
    end

    def past_productions
    	Production.where("start_date < ? and end_date < ?",  Date.today, Date.today)
    end

    def upcoming_productions
    	Production.where("start_date > ? and end_date > ?",  Date.today, Date.today)
    end
end
