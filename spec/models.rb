require 'active_record'
require 'acts-as-element-in-category'

class Category < ActiveRecord::Base
end

class Element < ActiveRecord::Base
  acts_as_element_in_category
end
