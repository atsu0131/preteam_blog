class RenameFronPasswordDiggestToPasswordDigestOnUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :password_diggest, :password_digest
  end
end
