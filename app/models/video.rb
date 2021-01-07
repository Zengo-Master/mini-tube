class Video < ApplicationRecord
  has_one_attached :image
  has_one_attached :video

  with_options presence: true do
    validates :video
    validates :title
    validates :image
  end
end
