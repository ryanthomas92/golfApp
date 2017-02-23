class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :state
      t.string :city
      t.boolean :public
      t.boolean :private
      t.boolean :municipal
      t.string :cost
      t.string :phone

      t.timestamps
    end
  end
end
