class Project < ApplicationRecord
  has_attached_file :image_1, styles: { large: "700x600>", medium: "400x300>" }
  has_attached_file :image_2, styles: { large: "700x600>", medium: "400x300>" }
  has_attached_file :image_3, styles: { large: "700x600>", medium: "400x300>" }
  has_attached_file :image_4, styles: { large: "700x600>", medium: "400x300>" }

  validates_presence_of :title, :description
  validates_attachment_content_type :image_1, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image_2, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image_3, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :image_4, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
