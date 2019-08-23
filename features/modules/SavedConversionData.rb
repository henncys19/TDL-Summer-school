class SavedConversionData
    # attr_reader :base_value, :conversion_value
    # def initialize(base_value, conversion_value)
    #     @base_value = base_value
    #     @conversion_value = conversion_value
    # end

    attr_accessor :base_value, :conversion_value

    def initialize(base_value = nil, conversion_value = nil)
        @base_value = base_value
        @conversion_value = conversion_value
    end
end



# @saved_data.base_value => nil

# @saved_data.base_value = 10

# @saved_data.base_value => 10