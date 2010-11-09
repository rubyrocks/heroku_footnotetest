class Footnote < ActiveRecord::Base
  #set_table_name "cr_ftnt_fact" 
  #set_primary_key "ftntf_id"
  
  belongs_to :component
  # belongs_to :contingency, :class_name => "Contingency"
 
  validates_presence_of :ftnt_tx
  validates_length_of :ftnt_tx, :maximum => 3000
end
