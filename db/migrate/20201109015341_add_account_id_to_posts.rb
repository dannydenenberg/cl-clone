class AddAccountIdToPosts < ActiveRecord::Migration[6.0]
  def change
    # add a column in the posts table that references the accounts
    # the column name will turn out to be account_id
    add_reference :posts, :account
  end
end
