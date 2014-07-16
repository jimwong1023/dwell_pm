class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :client_name
      t.string :email
      t.integer :initial_payment
      t.integer :final_payment
      t.integer :winning_designer
      t.text :scope
      t.integer :moodboard_payment
      t.integer :full_payment
      t.string :dropbox
      t.boolean :completed, default: false

      t.timestamps
    end

    add_index :projects, [:client_name]
  end
end
