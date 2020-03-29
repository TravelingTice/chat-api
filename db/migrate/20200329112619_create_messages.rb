class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :channel, foreign_key: true
      t.string :content
      t.string :author

      t.timestamps
    end
  end
end
