class AddSubmitterToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :submitter, :integer
  end
end
