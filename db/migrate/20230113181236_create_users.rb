class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :email
      t.text :password
      t.text :locate
      t.text :description
      t.text :surname
    end
  end
end
