class Calculator

  def self.add(input_str)
    input_str_arr = input_str.split(delimiter(input_str))
    negative_number = check_negative_number(input_str_arr)
    raise "negative numbers not allowed #{negative_number}" unless negative_number.size == 0
    input_str_arr = input_str_arr.map {|str| str.to_i }.sum
  end

  def self.delimiter(input_str)
    deli = input_str.match(/^\/\/(.*?)\n/)
    deli = deli.nil? ? /[\s,\,]/ : deli[1]
  end

  def self.check_negative_number(input_str_arr)
    negative_number = input_str_arr.select { |inp| inp.to_i.negative? }
    negative_number.map(&:inspect).join(',')
  end
end
