class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :term
      t.string :code
      t.string :name
      t.string :description
      t.integer :credits
      t.boolean :independent_study

      t.timestamps
    end
  end
end
