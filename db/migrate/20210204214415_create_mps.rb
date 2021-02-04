class CreateMps < ActiveRecord::Migration[5.2]
  def change
    create_table :mps do |t|	
    	t.text :content
      t.timestamps
    end
  end
end
