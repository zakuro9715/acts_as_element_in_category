# ActsAsElementInCategory

ActsAsElementInCategory is a categorizing plugin literally.

You can implement simple categorizing to your Rails applications. 
For instance, posts of a blog, pages of a wiki and more.  

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'acts-as-element-in-category'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acts-as-element-in-category

## Usage

Setup

```ruby
class YourCategory < ActiveRecord::Base
end

class Element < ActiveRecord::Base
  acts_as_element_in_your_category
end
```

Categorizing:

```ruby
category = YourCategory.find(params[:category_id])
element = Element.find(params[:element_id])
element.cateddgory = category
element.save
```

Category filter:

```ruby
category = YourCategory.find(params[:category_id])
elements = Element.in category
```

Query chain:

```ruby
category = YourCategory.find(params[:category_id])
elements = Element.where(your conditions).in(category).order(:id)
```

## Contributing

1. Fork it ( https://github.com/zakuro9715/acts-as-element-in-category/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
