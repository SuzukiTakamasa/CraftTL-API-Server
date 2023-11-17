class CreateApiKeys < ActiveRecord::Migration[7.0]
  def change
    create_table :api_keys do |t|
      t.integer :type
      t.string :api_key

      t.timestamps
    end
  end
end
