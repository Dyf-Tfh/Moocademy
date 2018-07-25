class AddIndexToLessons < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :cour, foreign_key: true
  end
end
