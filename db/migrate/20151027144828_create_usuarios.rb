class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :email
      t.string :password
      t.string :string
      t.string :alias
      t.string :nombre
      t.string :appellido
      t.date :f_nac
      t.boolean :activo

      t.timestamps null: false
    end
  end
end
