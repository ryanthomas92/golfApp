class AddRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :course, foreign_key: true
    add_reference :courses, :user, foreign_key: true
  end
end
