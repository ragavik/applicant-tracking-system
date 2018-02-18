class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.string :currentCompany
      t.string :linkedInURL
      t.string :portfolioURL
      t.text :additionalInfo
      t.string :gender
      t.string :race
      t.string :veteranStatus
      t.string :disabilityStatus
      t.string :resume

      t.timestamps
    end
  end
end
