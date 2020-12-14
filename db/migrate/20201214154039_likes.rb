class Likes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.string :style
      t.references :likeable,  polymorphic: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
