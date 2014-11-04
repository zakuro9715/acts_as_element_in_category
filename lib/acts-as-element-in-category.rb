require 'acts-as-element-in-category/version'
require 'acts-as-element-in-category/element'

ActiveRecord::Base.send :include, ActsAsElementInCategory::Element
