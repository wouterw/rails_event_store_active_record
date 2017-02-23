class CreateEventStoreEvents < ActiveRecord::Migration
  def change
    create_table(:event_store_events, id: :uuid) do |t|
      t.string      :stream,      null: false
      t.string      :event_type,  null: false
      t.string      :event_id,    null: false
      t.jsonb       :metadata,    null: false, default: {}
      t.jsonb       :data,        null: false, default: {}
      t.datetime    :created_at,  null: false
    end
    add_index :event_store_events, :stream
    add_index :event_store_events, :created_at
    add_index :event_store_events, :event_type
    add_index :event_store_events, :event_id, unique: true
  end
end
