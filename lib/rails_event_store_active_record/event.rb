require 'active_record'

module RailsEventStoreActiveRecord
  class Event < ::ActiveRecord::Base
    self.primary_key = :id
    self.table_name = 'event_store_events'
  end
end
