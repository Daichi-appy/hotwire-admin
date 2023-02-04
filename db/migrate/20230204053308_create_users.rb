class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :grade
      t.datetime :delted_at

      t.timestamps
    end
  end
end
