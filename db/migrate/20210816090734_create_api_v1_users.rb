class CreateApiV1Users < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_users do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
