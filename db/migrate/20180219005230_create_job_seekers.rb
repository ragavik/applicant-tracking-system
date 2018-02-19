class CreateJobSeekers < ActiveRecord::Migration[5.1]
  def change
    create_table :job_seekers do |t|
      t.string :fullName
      t.string :email
      t.string :password
      t.string :phone

      t.timestamps
    end
  end
end
