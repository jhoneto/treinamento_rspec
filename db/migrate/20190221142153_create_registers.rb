class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.string       :name
      t.string       :cpf
      t.references   :event
      t.string       :email
      t.string       :phone
      t.string       :status
      t.timestamps
    end
  end
end
