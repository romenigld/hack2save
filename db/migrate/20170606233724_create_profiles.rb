class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :last_name
      t.string :job_title
      t.boolean :social_entity
      t.string :phone_number
      t.string :contact_email
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
