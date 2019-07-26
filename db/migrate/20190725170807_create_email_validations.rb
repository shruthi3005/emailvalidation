class CreateEmailValidations < ActiveRecord::Migration[5.2]
  def change
    create_table :email_validations do |t|
      t.string :email
      t.integer :article_id
      t.boolean :status

      t.timestamps
    end
  end
end
