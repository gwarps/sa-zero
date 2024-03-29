class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
#class_eval "your code here, use %Q for multiline strings"
    class_eval %Q{
      def #{attr_name}=(value)
        if @#{attr_name}_history.nil?
          @#{attr_name}_history = Array.new
          @#{attr_name}_history.push(nil)
        else
          @#{attr_name} = value
        end
        @#{attr_name} = value
        @#{attr_name}_history.push(value)
      end
    }
  end
end
