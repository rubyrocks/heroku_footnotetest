class CreateFootnotes < ActiveRecord::Migration
  def self.up
    create_table :footnotes, :force => true do |t|
      
      t.integer :compo_id, :null => true, :limit => 10
      t.integer :rptpd_id, :null => true, :limit => 10
      t.integer :tot_obltn_am
      t.string :ftnt_ty_cd
      t.integer :var_prcnt_nbr, :limit => 3000
      t.integer :thrshd_prcnt_nbr
      t.text :ftnt_tx

      t.timestamps
    end
  end

  def self.down
    drop_table :footnotes
  end
end
