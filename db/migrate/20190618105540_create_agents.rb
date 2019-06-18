class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :first_name
      t.string :last_name
      t.string :status
      t.string :qcm_id

      t.timestamps
    end
  end
end
