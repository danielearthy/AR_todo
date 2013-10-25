class CreateListsAndTasks < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.timestamps
    end
    
    create_table :tasks do |a|
      a.belongs_to :list
      a.string :name
      a.boolean :complete, default: false
      a.timestamps
     end
  end

end 