class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :latitude, precision: 10, scale: 6, null: false
      t.decimal :longitude, precision: 10, scale: 6, null: false
      t.string :address
      t.datetime :start_at, null: false #, default: -> { "now()" }
      t.datetime :end_at
      t.boolean :private, null: false, default: false
      t.integer :event_type, null: false, default: 0
      t.string :url
      t.references :user

      t.timestamps
    end
  end
end
