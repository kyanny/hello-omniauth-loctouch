class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider, :null => false
      t.string :uid, :null => false
      t.string :screen_name, :null => false, :uniq => true
      t.string :avatar_image_url, :null => false
      t.string :profile_url, :null => false
      t.timestamps
    end
    add_index :users, [:provider, :uid]
    add_index :users, [:screen_name]
  end
end
