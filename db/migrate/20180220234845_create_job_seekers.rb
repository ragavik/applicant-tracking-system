class CreateJobSeekers < ActiveRecord::Migration[5.1]
  def change
    create_table :job_seekers do |t|
      t.string :name
      t.integer :phone

      t.timestamps
    end
  end
end
