class AddNotifiableTypeToNotifications < ActiveRecord::Migration[7.0]
  def change
    add_column :notifications, :notifiable_type, :string
  end
end
