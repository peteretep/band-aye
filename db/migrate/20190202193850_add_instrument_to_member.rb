class AddInstrumentToMember < ActiveRecord::Migration[5.2]
  def change
    add_reference :members, :instrument, foreign_key: true
  end
end
