class Post < ActiveRecord::Base

end

def time_dif(records_arr)
	present = Time.now

	records_arr.each do |record|

		records_time = record.created_at
		record[:dif] = present - records_time

	end

	return records_arr

end

def time_desc(num)
	min = num/60
	hour = num/3600
	day = num/86400

	if day > 0 
		if day == 1
			str1 = day + "day ago"
		else
			str1 = day + "days ago"
		end
	end

	if hour > 0 and hour < 24
		if hour == 1
			str2 = "an hour ago"
		else
			str2 = hour + "hours ago"
		end
	end

	if min > 0 and min < 60
		if min == 1
			str3 = "a minute ago"
		else 
			str3 = min + "minutes ago"
		end
	end

	return str1 + "and" + str2 + "and" + str3
end














