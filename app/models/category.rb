class Category < ActiveRecord::Base
  has_many :link_categories
  has_many :links, through: :link_categories
end
