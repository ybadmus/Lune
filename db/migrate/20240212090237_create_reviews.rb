class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string(:movie, null: false)
      t.string(:user)
      t.integer(:stars, limit: 1, default: 0)
      t.text(:review)
      t.boolean(:is_deleted, default: false, null: false)

      t.timestamps
    end
  end
end
