class CreateWhistles < ActiveRecord::Migration[5.0]
  def change
    create_table :whistles do |t|
      t.string :singular_name
      t.string :plural_name
      t.string :whistle_type
      t.integer :duckspeak_id

      t.timestamps
    end
  end
end
