class CreateActionPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :action_plans do |t|
    	t.string :qcm
    	t.datetime :date
    	t.string :agent
    	t.text :specific_behavior
    	t.text :measurable
    	t.text :action
    	t.text :relevant
    	t.text :timebound
    	t.text :why


      t.timestamps
    end
  end
end
