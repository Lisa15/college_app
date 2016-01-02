class CreatePersons < ActiveRecord::Migration
  def change
    create_table :persons do |t|
      t.string :username
      t.string :email
      t.timestamps
    end
  end
end
