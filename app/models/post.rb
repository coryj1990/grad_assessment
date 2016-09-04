require 'json'

class Post < ActiveRecord::Base

end

def the_json_func(postsarr)
	api = Hash.new
	postsarr = time_dif(postsarr)

	postsarr.each_with_index do |post, index|
		api[index] = { name: post[:name], message: post[:message], age: post[:dif]}
	end

	return api.to_json
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


	if day >= 365 and day < 730
		str = "A year"
	else
		str = (num/86400/365).to_s + " years"
	end

	if day > 0 and day < 30
		if day == 1
			str = day.to_s + " day"
		else
			str = day.to_s + " days"
		end
	end

	if hour > 0 and hour < 24
		if hour == 1
			str = " an hour"
		else
			str = hour.to_s + " hours"
		end
	end

	if min > 0 and min < 60
		if min == 1
			str = " a minute"
		else 
			str = min.to_s + " minutes"
		end
	end

	if num < 60
		str = "Less than a minute"
	end

	return str + " ago"
end

