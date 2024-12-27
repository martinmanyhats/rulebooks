class CreatePdfs < ActiveRecord::Migration[8.0]
  def change
    create_table :pdfs do |t|
      t.string :name
      t.references :owner, null: false, foreign_key: true
      t.string :version
      t.string :description
      t.string :page_count
      t.string :first_page_numberuploaded_filename
      t.datetime :uploaded_at
      t.references :uploaded_by, null: false, foreign_key: true

      t.timestamps
    end
  end
end
