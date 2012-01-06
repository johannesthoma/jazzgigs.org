class InitialRelease < ActiveRecord::Migration
	def self.up
		create_table :users do |t|
			t.string :first_name
			t.string :last_name
			t.string :email
			t.string :password_hash
		end

		create_table :events do |t|
			t.string :title
			t.integer :band_id
			t.integer :type_id
			t.integer :style_id
			t.integer :user_id
			t.integer :location_id
			t.datetime :begin_date
			t.datetime :end_date
			t.integer :admission
		end

		create_table :event_types do |t|
			t.string :name
		end

		create_table :event_styles do |t|
			t.string :name
		end

		create_table :locations do |t|
			t.string :name
			t.string :address
			t.string :homepage_url
		end

		create_table :bands do |t|
			t.string :name
			t.text :press_text
		end

		create_table :musicians do |t|
			t.string :first_name
			t.string :last_name
			t.integer :instrument_id
			t.text :bio
		end

		create_table :instruments do |t|
			t.string :name
		end
	end

	def self.down
		drop_table :users
		drop_table :events
		drop_table :event_types
		drop_table :event_styles
		drop_table :locations
		drop_table :bands
		drop_table :musicians
		drop_table :instruments
	end
end
