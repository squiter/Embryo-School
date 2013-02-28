class AddCourseIdInPeople < ActiveRecord::Migration
  def up
    change_table :people do |t|
      t.references :course
    end
  end

  def down
    remove_column :people, :course_id
  end
end
