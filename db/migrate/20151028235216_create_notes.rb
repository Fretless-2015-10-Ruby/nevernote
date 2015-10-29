class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :body_html
      t.text :body_text
      t.string :timestamps
    end
  end
end
