class CreateCategories < ActiveRecord::Migration

  def change
    create_table :categories do |t|
      t.string :title
    end
  end

  def up
  end

  def down
  end
end
