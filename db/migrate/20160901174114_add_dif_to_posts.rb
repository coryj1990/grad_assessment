class AddDifToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :dif, :integer
  end
end
