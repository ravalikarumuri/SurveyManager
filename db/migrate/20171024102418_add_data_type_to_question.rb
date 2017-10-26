class AddDataTypeToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :data_type, :integer
  end
end
