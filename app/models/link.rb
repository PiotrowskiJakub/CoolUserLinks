class Link < ActiveRecord::Base
  acts_as_votable
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :link_categories
  has_many :categories, through: :link_categories

  validates :title, presence: true
  validates :url, presence: true,
    format: {with: /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix,
      message: "Wrong url"}
  validates_presence_of :categories

  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present?}
  before_save :set_keywords

  protected

  def set_keywords
    self.keywords = self.categories.map{|c| c.name.downcase}.join(' ')
  end
end
