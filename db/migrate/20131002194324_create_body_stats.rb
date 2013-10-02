class CreateBodyStats < ActiveRecord::Migration
  def change
    create_table :body_stats do |t|
      t.integer  :height
      t.integer  :male_weight
      t.integer  :female_weight
      t.timestamps
    end
  end
end
