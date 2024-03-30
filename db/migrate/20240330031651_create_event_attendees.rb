class CreateEventAttendees < ActiveRecord::Migration[7.1]
  def change
    create_table :event_attendees do |t|
      t.integer :event_attendee_id
      t.integer :attending_event_id

      t.timestamps
    end
  end
end
