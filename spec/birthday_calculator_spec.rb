require 'birthday_calculator'
require 'date'
require 'timecop'

describe BirthdayCalculator do

  describe '#self.days_until' do
    it 'calculates the days until next birthday' do
      Timecop.freeze(Date.new(2019,12,1))
      birthday = BirthdayCalculator.days_until(2019,12,5)
      expect(birthday).to eq 4
    end
  end
end
