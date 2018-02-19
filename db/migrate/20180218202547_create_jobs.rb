class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :employment_type
      t.text :requirements
      t.text :responsibilities

      t.references :company
      t.references :recruiter

      t.timestamps
    end
  end
end
