class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :custom_id

      t.timestamps
    end
  end
end
