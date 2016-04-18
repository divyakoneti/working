class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :name
      t.integer :marks, default: 0
      t.string :year
      t.string :course
      t.integer :classroom_id

      t.timestamps null: false
    end
  end
end
