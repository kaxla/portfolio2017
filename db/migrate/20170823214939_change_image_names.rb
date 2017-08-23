class ChangeImageNames < ActiveRecord::Migration[5.1]
  def change
    change_table :projects do |t|
      t.rename :image_1_file_name, :homepage_image_file_name
      t.rename :image_1_content_type, :homepage_image_content_type
      t.rename :image_1_file_size, :homepage_image_file_size
      t.rename :image_1_updated_at, :homepage_image_updated_at

      t.rename :image_2_file_name, :index_image_file_name
      t.rename :image_2_content_type, :index_image_content_type
      t.rename :image_2_file_size, :index_image_file_size
      t.rename :image_2_updated_at, :index_image_updated_at
    end
  end
end
