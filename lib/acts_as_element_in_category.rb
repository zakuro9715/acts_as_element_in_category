require 'acts_as_element_in_category/version'
require 'acts_as_element_in_category/element'

ActiveRecord::Base.send :include, ActsAsElementInCategory::Element
