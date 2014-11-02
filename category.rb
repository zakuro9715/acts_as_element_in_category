require 'active_record'

module Category 
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_element_in(category, options={})
      belongs_to category, options
    end

    def method_missing(method_name, *args)
      if /^acts_as_element_in_(?<category_name>.+)$/ =~ method_name 
        return acts_as_element_in(category_name.to_sym, *args)
      end
      self
    end
  end
end

ActiveRecord::Base.send :include, Category
