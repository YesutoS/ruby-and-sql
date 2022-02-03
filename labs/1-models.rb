# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
apple = Company.where({name: "Apple" })[0]
amazon = Company.where({ name: "Amazon"})[0]
tesla = Company.where({ name: "Tesla"})[0]

puts apple.inspect
# 2. create 1-2 new contacts for each company (they can be made up)

# create_table "contacts", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.string "email"
#     t.string "phone_number"
#     t.integer "company_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

values = {
    first_name: "John",
    last_name: "Doe",
    email: "jdoe@gmail.com",
    phone_number: "555-123-1234",
    company_id: apple.id
}

contacts = Contact.new(values)
contacts.save

values = {
    first_name: "James",
    last_name: "Smith",
    email: "jsmith@gmail.com",
    phone_number: "555-123-5678",
    company_id: apple.id
}

contacts = Contact.new(values)
contacts.save

values = {
    first_name: "Elon",
    last_name: "Musk",
    email: "Emusk@gmail.com",
    phone_number: "555-123-5678",
    company_id: tesla.id
}

contacts = Contact.new(values)
contacts.save

values = {
    first_name: "Jeff",
    last_name: "Bezos",
    email: "jbezos@gmail.com",
    phone_number: "555-123-5678",
    company_id: amazon.id
}

contacts = Contact.new(values)
contacts.save


puts Contact.all.inspect

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

puts "Contacts: #{Contact.all.count}"

#puts Contact.all.inspect

contacts = Contact.all
for contact in contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end

#contact1 = Contact[0]

#puts contact1.read_attribute(:first_name)


# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
