class CreateUserStudies < ActiveRecord::Migration[7.1]
  def change
    create_table :user_studies do |t|
      t.references :user
      t.string :school_name
      t.string :name
      t.date :started_at
      t.date :finished_at

      t.timestamps
    end
  end
end
