class CreateApiV1Tournaments < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_tournaments do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :state,       limit: 2, null: false
      t.date :start_date, null: false

      t.timestamps
    end
  end
end
