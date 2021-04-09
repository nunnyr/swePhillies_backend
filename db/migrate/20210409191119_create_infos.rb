class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :name
      t.integer :salary
      t.integer :year
      t.string :level

      t.timestamps
    end
  end
end
