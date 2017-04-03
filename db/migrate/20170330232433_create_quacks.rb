class CreateQuacks < ActiveRecord::Migration[5.0]
  def change
    create_table :quacks do |t|
      t.string :content
      t.integer :whistle_id


      t.timestamps
    end

    add_index :whistles, :duckspeak_id
    add_index :quacks, :whistle_id

  end
end
