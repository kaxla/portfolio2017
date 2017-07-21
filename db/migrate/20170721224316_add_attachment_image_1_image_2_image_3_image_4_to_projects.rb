class AddAttachmentImage1Image2Image3Image4ToProjects < ActiveRecord::Migration[5.1]
  def self.up
    change_table :projects do |t|
      t.attachment :image_1
      t.attachment :image_2
      t.attachment :image_3
      t.attachment :image_4
    end
  end

  def self.down
    remove_attachment :projects, :image_1
    remove_attachment :projects, :image_2
    remove_attachment :projects, :image_3
    remove_attachment :projects, :image_4
  end
end
