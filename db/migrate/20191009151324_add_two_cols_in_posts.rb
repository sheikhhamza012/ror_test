class AddTwoColsInPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :msg, :string
    add_column :posts, :msg_type, :boolean
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
