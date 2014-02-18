class CreatePosts < ActiveRecord::Migration

  def change
    create_table :posts do |t|
      t.string :title, :body, :location
      t.belongs_to :category
      t.timestamps
    end
  end

  def up
  end

  def down
  end
end
