class CreateFollowers < ActiveRecord::Migration[7.0]
  def change
    create_table :followers do |t|
      t.references :from, null: false, foreign_key: {to_table: :users}
      t.references :to, null: false, foreign_key: {to_table: :users}
      t.timestamps
    end
  end
end
