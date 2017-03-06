class CreateLComments < ActiveRecord::Migration[5.0]
  def change
    create_table :l_comments do |t|
      t.string :author_name
      t.text :body
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
