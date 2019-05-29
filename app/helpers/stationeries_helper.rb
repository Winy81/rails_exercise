module StationeriesHelper
require 'date'

  def date_time_now
    date_now = Date.parse(Time.now.to_s)
  end

  def time_different(date)
    registered_date = Date.parse(date.to_s)
    (date_time_now - registered_date).to_i
  end

end
