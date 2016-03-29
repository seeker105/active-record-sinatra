class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string    :director
    end
  end
end
