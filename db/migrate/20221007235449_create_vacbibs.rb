class CreateVacbibs < ActiveRecord::Migration[7.0]
  def change
    create_table :vacbibs do |t|
      t.string :category
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
