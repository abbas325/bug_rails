class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.string :type
      t.string :status
      t.datetime :deadline

      t.timestamps
    end
  end
end
