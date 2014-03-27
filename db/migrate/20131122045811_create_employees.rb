class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :employee_id
      t.string :name
      t.string :address
      t.string :city
      t.string :c_state
      t.string :zipcode
      t.date :date_hired
      t.date :birth_date
      t.string :employee_supervisor
      t.string :email
      t.string :username
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
