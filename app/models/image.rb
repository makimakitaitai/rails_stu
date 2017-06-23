class Image < ActiveRecord::Base
  validates :url, presence: true
  validates :title, presence: true
  has_many :comments
end

class Comment < ActiveRecord::Base
  belongs_to :image
end
