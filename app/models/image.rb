class Image < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validate :acceptable_image

  def acceptable_image
    # Ensure attachment exists
    return unless image.attached?

    # Check size of image
    unless image.byte_size <= 3.megabyte
      errors.add(:image, "is larger than 3 MB.")
    end

  end
end
