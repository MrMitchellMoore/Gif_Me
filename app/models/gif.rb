class Gif < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :user
  
  acts_as_taggable

  scope :sorted, -> {order(created_at: :desc)}

  def self.random
    order("Random()").first
  end
end
