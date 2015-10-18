module ApplicationHelper

	def flash_class(type)
		case type
		when "alert"
			return "alert-danger"	
		when "notice"
			return "alert-success"					
		end
	end
end
