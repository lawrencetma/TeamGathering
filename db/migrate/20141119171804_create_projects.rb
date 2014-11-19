class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.boolean :private
      t.boolean :completed
      t.string  :title
      t.text    :summary
      t.text    :details
      t.date    :projected_start
      t.date    :projected_end
      t.string  :commitment_level
      t.timestamps
    end
  end
end
