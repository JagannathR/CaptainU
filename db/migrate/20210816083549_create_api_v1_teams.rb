class CreateApiV1Teams < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_teams do |t|
      t.string :name, null: false
      t.string :age_group
      t.string :coach

      t.timestamps
    end
  end
end
