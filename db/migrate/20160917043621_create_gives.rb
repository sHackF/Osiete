class CreateGives < ActiveRecord::Migration[5.0]
  def change
    create_table :gives do |t|
      t.integer :user_id
      t.string :title
      t.text :about

      t.timestamps
    end
  end
end
