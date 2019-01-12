class Item < ApplicationRecord
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>", large: "600x600>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :cost, numericality: {greater_than_or_equal_to: 0.01}
  validates :user_name , presence: true
  validates :contact_number , presence: true
  validates :title , presence: true
  validates :description , presence: true
  validates :cost , presence: true
  belongs_to :user
  validates_presence_of :user
end
