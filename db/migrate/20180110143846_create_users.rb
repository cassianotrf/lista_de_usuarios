class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :gender
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :picture
      t.string :nat, default: "br"
      t.string :seed, default: "giga"

      t.timestamps
    end
  end
end
