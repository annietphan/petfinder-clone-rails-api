class AddKindToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :kind, :string
  end
end
