require 'date'

class BirthdayCalculator

  def self.days_until(year, month, day)
    date = Date.new(year.to_i, month.to_i, day.to_i) - DateTime.now
    @days = date.to_i
  end

  def self.instance
    @days
  end

end
