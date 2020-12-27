class CreateSaloons < ActiveRecord::Migration[6.0]
  def change
    create_table :saloons do |t|
      t.string :name
      t.string :address
      t.string :opening_time
      t.string :closing_time
      t.string :services
      t.string :contact

      t.timestamps
    end
  end
end
