class CreateDuckspeaks < ActiveRecord::Migration[5.0]
  def change
    create_table :duckspeaks do |t|
      t.string :name
      t.string :description
      t.string :tagline

      t.timestamps
    end
  end
end
