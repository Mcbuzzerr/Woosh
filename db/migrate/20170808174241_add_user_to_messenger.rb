class AddUserToMessenger < ActiveRecord::Migration[5.1]
  def change
    add_reference :messengers, :user, foreign_key: true
  end
end
