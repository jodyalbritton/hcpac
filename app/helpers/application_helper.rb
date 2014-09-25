module ApplicationHelper
	def current_production
		Production.where("ticket_start_date <= ? and ticket_end_date >= ?",  Date.today, Date.today).first
    end

    def past_productions
    	Production.where("ticket_start_date < ? and ticket_end_date < ?",  Date.today, Date.today)
    end

    def upcoming_productions
    	Production.where("ticket_start_date > ? and ticket_end_date > ?",  Date.today, Date.today)
    end
end
