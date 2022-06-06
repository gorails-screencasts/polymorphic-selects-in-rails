class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.belongs_to :assigned_to, polymorphic: true, null: false

      t.timestamps
    end
  end
end
