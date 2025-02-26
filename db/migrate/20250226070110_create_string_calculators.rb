class CreateStringCalculators < ActiveRecord::Migration[8.0]
  def change
    create_table :string_calculators do |t|
      t.timestamps
    end
  end
end
