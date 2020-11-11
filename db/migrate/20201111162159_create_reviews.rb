class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false, inclusion: { in: (0..5) }
      t.text :content, null: false
      t.references :restaurant, null: false, foreign_key: true, dependent: :destroy

      t.timestamps
    end
  end
end
