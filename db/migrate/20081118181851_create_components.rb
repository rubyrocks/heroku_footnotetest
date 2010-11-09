class CreateComponents < ActiveRecord::Migration
  def self.up
    create_table :components do |t|

      t.string :compo_cd, :null => false, :limit => 10
      t.string :compo_nm, :null => false, :limit => 50

      t.timestamps
    end
  end

  def self.down
    drop_table :components
  end
end
