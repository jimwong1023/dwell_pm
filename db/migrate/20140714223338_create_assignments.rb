class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.belongs_to :user
      t.belongs_to :project

      t.timestamps
    end

    add_index :assignments, [:user_id, :project_id], :unique => true
  end
end
