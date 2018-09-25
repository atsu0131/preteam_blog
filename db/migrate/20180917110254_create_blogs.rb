class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :content
      t.references :user, null: false

      t.timestamps
    end
  end
end
