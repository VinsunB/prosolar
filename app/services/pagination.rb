
class Pagination

	def paginate(current_page, request, modelCount, offset=2)

		case request
		when "next"
         return current_page += offset
		when "back"
			return current_page -= offset
		when "last"
			return current_page = modelCount - offset
        when "first"
        	current_page = 0
		else
			return 0
		end
	end
end