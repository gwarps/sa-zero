class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(sym)
   singular_currency = sym.to_s.gsub( /s$/, '')
   if @@currencies.has_key?(singular_currency)
    self / @@currencies[singular_currency]
   else
    super
   end
  end
end

class String
  # YOUR CODE HERE
  def palindrome?
    temp = self.split(/[^a-zA-Z]/).join.downcase
    return temp == temp.reverse
  end
end

module Enumerable
  # YOUR CODE HERE
  def palindrome?
   return false unless self.respond_to?(:each)
   x = self.each.collect do |i| i end
   return x.eql? x.reverse
  end
end

