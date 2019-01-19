class AddInstrumentsToPlayer < ActiveRecord::Migration[5.2]
  def change
    create_join_table :instruments, :members do |t|
      t.index [:instrument_id, :member_id]
    end
  end
end
