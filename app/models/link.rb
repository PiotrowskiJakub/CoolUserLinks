class Link < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :link_categories
  has_many :categories, through: :link_categories

  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present?}
  before_save :set_keywords

  protected

  def set_keywords
    self.keywords = self.categories.map{|c| c.name.downcase}.join(' ')
  end
end
