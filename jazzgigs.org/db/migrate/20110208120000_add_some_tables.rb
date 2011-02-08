class AddSomeTables < ActiveRecord::Migration
	
	def self.up
		create_table :zak do |t|
			t.integer :karin
			t.string :lebt
		end
	end

	def self.down
		drop_table :zak
	end

end
