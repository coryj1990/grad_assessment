class Post < ActiveRecord::Base

	def time_dif(records_arr)
		present = Time.now

		records_arr.each do |record|

			records_time = record_created_at
			record[:dif] = present - records_time

		end

		return records_arr

	end

end
