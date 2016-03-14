class Link < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :link_categories
  has_many :categories, through: :link_categories
end
