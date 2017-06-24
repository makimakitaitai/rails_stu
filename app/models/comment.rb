class Create < ActiveRecord::Base
  validates :body, presence: true
  validates :image, presence: true
  
  belong_to :image
end
