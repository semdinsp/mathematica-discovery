class CreateMathematicaPackages < ActiveRecord::Migration
  def change
    create_table :mathematica_packages do |t|
      t.string :owner
      t.string :repository
      t.string :description
      t.integer :downloads

      t.timestamps
    end
  end
end
