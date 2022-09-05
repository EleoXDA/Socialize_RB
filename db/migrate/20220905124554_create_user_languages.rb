class CreateUserLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :user_languages do |t|
      t.references :language, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
