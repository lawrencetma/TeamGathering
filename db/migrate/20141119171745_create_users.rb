class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :unique => true, :null => false
      t.string :password_digest, :null => false
      t.string :first_name
      t.string :last_name
      t.text   :about
      t.string :rating
      t.string :current_project
    end
  end
end
