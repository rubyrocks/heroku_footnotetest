class CreateContingencies < ActiveRecord::Migration
  def self.up
    create_table :contingencies do |t|

      t.string :cntgcy_cd, :null => false, :limit => 6
      t.string :cntgcy_nm, :null => false, :limit => 50

      t.timestamps
    end
  end

  def self.down
    drop_table :contingencies
  end
end
