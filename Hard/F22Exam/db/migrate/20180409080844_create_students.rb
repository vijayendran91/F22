class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students,id: false do |t|
      t.string :user_name
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :students, :user_name, unique:true
  end
end
