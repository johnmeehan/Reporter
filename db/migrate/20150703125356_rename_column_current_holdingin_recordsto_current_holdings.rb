class RenameColumnCurrentHoldinginRecordstoCurrentHoldings < ActiveRecord::Migration
  def change
    rename_column :records, :current_holding, :current_holdings
    rename_column :records, :previous_holding, :previous_holdings
  end
end
