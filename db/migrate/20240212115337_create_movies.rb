# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string(:movie, null: false)
      t.text(:description, null: false)
      t.integer(:year, default: 2024)
      t.string(:director, null: false)
      t.string(:actor, null: false)
      t.string(:filming_location, default: '')
      t.string(:country, default: '')
      t.boolean(:is_deleted, default: false, null: false)

      t.timestamps
    end
  end
end
