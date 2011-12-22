class InitialRelease < ActiveRecord::Migration
	def self.up
		create_table :user do |t|
			t.string :first_name
			t.string :last_name
			t.string :email
			t.string :password_hash
		end

		create_table :event do |t|
			t.string :title
			t.integer :band_id
			t.integer :type_id
			t.integer :style_id
			t.integer :location_id
			t.datetime :begin_date
			t.datetime :end_date
			t.integer :admission
			t.integer :create_by_user
		end

		create_table :event_type do |t|
			t.string :name
		end

		create_table :event_style do |t|
			t.string :name
		end

		create_table :location do |t|
			t.string :name
			t.string :address
			t.string :homepage_url
		end

		create_table :band do |t|
			t.string :name
			t.text :press_text
		end

		create_table :musician do |t|
			t.string :first_name
			t.string :last_name
			t.integer :instrument_id
			t.text :bio
		end

		create_table :instrument do |t|
			t.string :name
		end
	end

	def self.down
		drop_table :user
		drop_table :event
		drop_table :event_type
		drop_table :event_style
		drop_table :location
		drop_table :band
		drop_table :musician
		drop_table :instrument
	end
end
