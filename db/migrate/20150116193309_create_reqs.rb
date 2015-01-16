class CreateReqs < ActiveRecord::Migration
  def change
    create_table :reqs do |t|
      t.string :name
      t.string :department
      t.text :email
      t.text :message

      t.timestamps null: false
    end
  end
end
