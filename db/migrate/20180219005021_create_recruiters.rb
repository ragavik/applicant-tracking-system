class CreateRecruiters < ActiveRecord::Migration[5.1]
  def change
    create_table :recruiters do |t|
      t.string :name
      t.string :email
      t.string :password

      t.references :company

      t.timestamps
    end


  end
end
