module Shared

  # validated the ascii value for checking numeric
  
  def self.is_number_and_operator?(exp)
    exp.split('').each do |d|
      return false if (d.ord > 31 && (d.ord < 48 || d.ord > 57)) && ![42, 43, 45, 47].include?(d.ord)
		end
		true
  end

  def self.is_only_number?(exp)
    exp.split('').each do |d|
      return false if (d.ord > 31 && d.ord < 48 || d.ord > 57)
		end
		true
  end
end