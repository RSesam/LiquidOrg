class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|

      t.integer :id,      :null => false
      t.integer :user_id, :null => false

      t.string  :name1
      t.string  :name2
      t.string  :strasse
      t.string  :hnr,     :limit => 4
      t.string  :hnr_zus, :limit => 2
      t.string  :plz,     :limit => 5
      t.string  :ort
      t.string  :landkz,  :limit => 3

      t.timestamps
    end

    add_index :addresses, :name1

  end

  def self.down
    drop_table :addresses
  end

end
