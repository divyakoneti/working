class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :name
       t.integer :contact
    	t.string :email
    	t.string :gender
    	t.text   :address
    	t.integer :classroom_id


      t.timestamps null: false
    end
  end
end
