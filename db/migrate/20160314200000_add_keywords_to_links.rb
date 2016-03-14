class AddKeywordsToLinks < ActiveRecord::Migration
  def change
    add_column :links, :keywords, :text
  end
end
