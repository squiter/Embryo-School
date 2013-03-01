class AssignTeachers < ActiveRecord::Migration
  def change
    create_table :assign_teachers, id: false do |t|
      t.references :teacher
      t.references :course
      t.references :subject
    end
  end
end
