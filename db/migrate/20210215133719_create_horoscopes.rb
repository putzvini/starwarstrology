class CreateHoroscopes < ActiveRecord::Migration[6.0]
  def change
    create_table :horoscopes do |t|
      t.string :name
      t.string :short_name
      t.string :full_name
      t.string :color

      t.timestamps
    end
  end
end
