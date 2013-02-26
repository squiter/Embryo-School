class Person < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :type
    end
  end
end
