class ChangeDataTypeForBirthday < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.change :birthday, :date
    end
  end
end
