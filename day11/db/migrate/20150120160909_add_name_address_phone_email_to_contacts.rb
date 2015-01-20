class AddNameAddressPhoneEmailToContacts < ActiveRecord::Migration
  def change
  	add_column :contacts, :first_name, :string
  	add_column :contacts, :middle_name, :string
  	add_column :contacts, :last_name, :string
  	add_column :contacts, :address, :string
  	add_column :contacts, :city, :string
  	add_column :contacts, :state, :string
  	add_column :contacts, :zip, :string
  	add_column :contacts, :phone_number, :string
  	add_column :contacts, :email, :string
  end
end
