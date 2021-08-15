class CreateKeywords < ActiveRecord::Migration[6.0]
  def change
    create_table :keywords do |t|
      t.references :user,        null: false ,foreign_key: true
      t.string     :word,        null: false
      t.text       :instruction, null: false
      t.integer    :genre_id,    null: false
      t.timestamps
    end
  end
end
