class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.jsonb :data, default: [], null: false, array: true

      t.timestamps
    end
  end
end
