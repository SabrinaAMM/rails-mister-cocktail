class AddForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_column(:doses, :cocktail_id, :integer)
    add_column(:doses, :ingredient_id, :integer)
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
