class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
    	t.string :name
    	t.text   :description
    	t.integer :no_of_students, default: 0

      t.timestamps null: false
    end
  end
end
