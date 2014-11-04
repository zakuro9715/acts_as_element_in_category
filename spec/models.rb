require 'active_record'
require 'acts_as_element_in_category'

class Category < ActiveRecord::Base
end

class Element < ActiveRecord::Base
  acts_as_element_in_category
end
