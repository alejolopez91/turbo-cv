class CreateUserWorks < ActiveRecord::Migration[7.1]
  def change
    create_table :user_works do |t|
      t.references :user
      t.string :company_name
      t.string :title
      t.date :started_at
      t.date :finished_at
      t.text :description

      t.timestamps
    end
  end
end
