class Video < ApplicationRecord
  has_one_attached :image
  has_one_attached :video

  with_options presence: true do
    validates :video
    validates :title
    validates :image
    validates :kifu
  end

  def self.search(search)
    if search != ""
      Video.where('title LIKE(?)', "%#{search}%")
    else
      Video.all
    end
  end
end