class AddAudioToKeywords < ActiveRecord::Migration[6.0]
  def change
    add_column :keywords, :audio, :string
  end
end
