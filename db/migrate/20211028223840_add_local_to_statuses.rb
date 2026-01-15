class AddLocalToStatuses < ActiveRecord::Migration[6.1]
  def change
    add_column :statuses, :local, :string
  end
end
