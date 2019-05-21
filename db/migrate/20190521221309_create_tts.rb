class CreateTts < ActiveRecord::Migration[5.1]
  def change
    create_table :tts do |t|
      t.string :CreateTts

      t.timestamps
    end
  end
end
