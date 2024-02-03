class UpdateTables < ActiveRecord::Migration[7.0]

  def change
    add_column :posts, :votes, :int, default: 0
  end

end
