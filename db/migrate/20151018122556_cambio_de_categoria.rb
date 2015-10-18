class CambioDeCategoria < ActiveRecord::Migration
  def change
    change_column :statuses, :user_id, :integer
  end
end