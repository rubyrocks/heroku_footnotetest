class CreateDatastats < ActiveRecord::Migration
  def self.up
    create_table :datastats do |t|

      t.integer :compo_id, :null => false, :limit => 10
      t.integer :rptpd_id, :null => false, :limit => 10
      t.string :data_stat_cd, :null => false, :limit => 14
      t.timestamps
    end
  end

  def self.down
    drop_table :datastats
  end
end
