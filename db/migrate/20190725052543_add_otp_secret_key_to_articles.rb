class AddOtpSecretKeyToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :otp_secret_key, :string
  end
end
