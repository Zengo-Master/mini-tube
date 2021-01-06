class Video < ApplicationRecord
  has_one_attached :video

  with_options presence: true do
    validates :title
  end
end
