require 'active_record'

module ActsAsElementInCategory
  module Element
    def self.included(base)
      base.extend ClassMethods
    end
    
    module ClassMethods
      def acts_as_element_in(category_name, options={})
        @category_column = category_name.to_s
        belongs_to category_name, options
      end

      def in(category, *args)
        where("#{@category_column}_id = ?", category.id)
      end

      def method_missing(method_name, *args)
        if /^acts_as_element_in_(?<category_name>.+)$/ =~ method_name
          return acts_as_element_in(category_name.to_sym, *args)
        end
        self
      end
    end
  end
end
