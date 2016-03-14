class CreateLinkCategories < ActiveRecord::Migration
  def change
    create_table :link_categories do |t|
      t.references :link, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
