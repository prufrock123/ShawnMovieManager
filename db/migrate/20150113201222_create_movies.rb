class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :f
      t.string :ormat
      t.integer :length, limit: 500
      t.integer :release, limit: 2100
      t.integer :rating, limit: 5

      t.timestamps
    end
  end
end
