class AddCurrentToLoan < ActiveRecord::Migration[6.1]
  def change
    add_column :loans, :current, :boolean, :default=> true
  end
end
