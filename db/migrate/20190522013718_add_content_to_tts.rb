class AddContentToTts < ActiveRecord::Migration[5.1]
  def change
    add_column :tts, :content, :text
  end
end
