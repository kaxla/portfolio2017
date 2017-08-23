class Project < ApplicationRecord
  has_attached_file :homepage_image, styles: { large: "700x600>", medium: "400x300>" }
  has_attached_file :index_image, styles: { large: "700x600>", medium: "400x300>" }
  has_attached_file :image_3, styles: { large: "700x600>", medium: "400x300>" }
  has_attached_file :image_4, styles: { large: "700x600>", medium: "400x300>" }

  validates_presence_of :title, :description
  validates_attachment_content_type :homepage_image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :index_image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image_3, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image_4, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
