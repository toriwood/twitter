class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :courses, :credit, :credits
  end
end
