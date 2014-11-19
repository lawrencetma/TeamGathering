class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string     :institution
      t.string     :credential
      t.text       :description
      t.date       :year_completed
      t.text       :awards
      t.belongs_to :users
    end
  end
end
