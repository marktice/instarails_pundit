class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.references :user, foreign_key: true
      t.text :image_data
      t.text :description

      t.timestamps
    end
  end
end
