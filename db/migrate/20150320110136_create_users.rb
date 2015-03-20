class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|			#cоздание таблицы
      t.string :name					#столбец имя
      t.string :email					#столбец емайл	

      t.timestamps null: false
    end
  end
end
