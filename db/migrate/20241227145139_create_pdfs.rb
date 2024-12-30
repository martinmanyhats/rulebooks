class CreatePdfs < ActiveRecord::Migration[8.0]
  def change
    create_table :pdfs do |t|
      t.string :name, null: false
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.string :version, null: false, default: ""
      t.string :description, null: false, default: ""
      t.string :page_count, null: false
      t.string :first_page_number, null: false, default: 1
      t.string :uploaded_filename, null: false
      t.datetime :uploaded_at, null: false
      t.references :uploaded_by, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
