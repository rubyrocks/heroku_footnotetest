class CreateReportingperiods < ActiveRecord::Migration
  def self.up
    create_table :reportingperiods do |t|

      t.integer :rptprd_id, :null => false, :limit => 10
      t.integer :cal_mo_nbr, :null => false, :limit => 2
      t.string :fy, :null => false, :limit => 4
      t.string :prd_nm, :null => false, :limit => 50

      t.timestamps
    end
  end

  def self.down
    drop_table :reportingperiods
  end
end
