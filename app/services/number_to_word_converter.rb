class NumberToWordConverter

  def initialize
    @numbers_to_name = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
  end

  def in_words(input_number)
    str = ""
    @numbers_to_name.each do |num, name|
      if input_number == 0
        return str
      elsif input_number.to_s.length == 1 && input_number/num > 0
        return str + "#{name}"      
      elsif input_number < 100 && input_number/num > 0
        return str + "#{name}" if input_number%num == 0
        return str + "#{name} " + in_words(input_number%num)
      elsif input_number/num > 0
        return str + in_words(input_number/num) + " #{name} " + in_words(input_number%num)
      end
    end
  end
end