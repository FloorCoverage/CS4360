class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :security_question
      t.string :security_answer

      t.timestamps
    end
  end
end
