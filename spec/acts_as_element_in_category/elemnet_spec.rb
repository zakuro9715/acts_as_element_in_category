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

      it 'has .in' do
        expect(subject).to include(:in)
      end
    end

    describe '.acts_as_element_in' do
      it 'should call belongs_to' do
        expect(Element).to receive(:belongs_to)
        Element.acts_as_element_in :category
      end
    end

    describe '.in' do
      context 'when element is in category' do
        before do
          @category = Category.create(name: 'name')
          @element = Element.create(category: @category)
        end
        
        subject { Element.in @category }

        it 'return element' do
          expect(subject.present?).to be true
        end
      end

      context 'when element in not in category' do
        before do 
          @category = Category.create(name: 'name')
          @element = Element.create(category: Category.create(name: 'other')) 
        end

        subject { Element.in @category }

        it 'return nothing' do
          expect(subject.blank?).to be true
        end
      end
    end
  end
end
