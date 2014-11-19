class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.belongs_to :users
      t.belongs_to :projects
    end
  end
end
