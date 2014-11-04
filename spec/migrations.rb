require 'active_record'

class CategoriesTable < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :categories
  end
end

class ElementsTable < ActiveRecord::Migration
  def self.up
    create_table :elements do |t|
      t.references :category
    end
  end

  def self.down
    drop_table :elements
  end
end
