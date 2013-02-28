class CreateSubjectsTeachers < ActiveRecord::Migration
  def change
    create_table :subjects_teachers, id: false do |t|
      t.references :teacher
      t.references :subject
    end
  end
end
