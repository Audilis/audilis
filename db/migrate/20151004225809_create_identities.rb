class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :provider
      t.string :uid
      t.text :data

      t.timestamps null: false
    end
    add_index :identities, :provider
    add_index :identities, :uid
  end
end
