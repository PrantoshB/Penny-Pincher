class RemoveColumnFromPayments < ActiveRecord::Migration[7.0]
  def change
    remove_column :payments, :author_id, :integer
  end
end
