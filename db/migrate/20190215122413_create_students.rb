class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string       :name
      t.string       :register
      t.string       :address
      t.string       :mother_name
      t.string       :father_name
      t.integer      :age
      t.string       :email
      t.timestamps
    end
  end
end
