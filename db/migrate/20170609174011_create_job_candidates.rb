class CreateJobCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :job_candidates do |t|
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.integer :status
      t.text :presentation_letter

      t.timestamps
    end
  end
end
