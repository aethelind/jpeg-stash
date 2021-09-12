class Image < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validate :acceptable_image

  # Validations from:
  # https://pragmaticstudio.com/tutorials/using-active-storage-in-rails
  def acceptable_image
    # Ensure attachment exists
    return unless image.attached?

    # Check size of image
    unless image.byte_size <= 3.megabyte
      errors.add(:image, "is larger than 3 MB.")
    end
    
    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(image.content_type)
      errors.add(:image, "must be a JPEG or PNG")
    end
  end
end
