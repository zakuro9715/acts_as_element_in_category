require 'spec_helper'

describe ActsAsElementInCategory::Element do
  before :all do
    CategoriesTable.migrate :up
    ElementsTable.migrate :up
  end

  after :all do
    CategoriesTable.migrate :drop
    ElementsTable.migrate :drop
  end

  describe ActiveRecord::Base do
    describe 'class methods' do
      subject { ActiveRecord::Base.methods }

      it 'has .acts_as_element_in' do
        expect(subject).to include(:acts_as_element_in)
      end
    end

    describe '.acts_as_element_in' do
      it 'should call belongs_to' do
        expect(Element).to receive(:belongs_to)
        Element.acts_as_element_in :category
      end
    end
  end
end
