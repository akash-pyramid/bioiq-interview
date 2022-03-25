module Shared

  # validated the ascii value for checking numeric
  
  def self.is_number_and_operator?(exp)
    exp.split('').each do |d|
      raise "Invalid input" if (d.ord > 31 && (d.ord < 48 || d.ord > 57)) && ![42, 43, 45, 47].include?(d.ord)
		end
		exp
  end

  def self.is_only_number?(exp)
    exp.split('').each do |d|
      raise "Invalid input" if (d.ord > 31 && d.ord < 48 || d.ord > 57)
		end
		exp
  end
end