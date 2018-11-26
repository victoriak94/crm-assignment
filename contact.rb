

require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')

class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name,  as: :string
  field :email,      as: :string
  field :note,       as: :text

  def full_name
    "#{first_name} #{last_name}"
  end

end

p victoria = Contact.create(
  first_name: "Victoria",
  last_name:  "Kamila",
  email:      "vkamila6@gmail.com",
  note:       "Is a libra sun, taurus moon, and libra rising."
)

puts victoria.inspect
