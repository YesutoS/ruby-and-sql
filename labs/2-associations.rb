# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-associations.rb

# 1. write code to display each contact (you can reuse the previous lab's code) and include the contact's company name, e.g.:
apple = Company.where({ name: "Apple"})[0]
amazon = Company.where({ name: "Amazon"})[0]
tesla = Company.where({ name: "Tesla"})[0]

#contacts = Contact.where({ company_id: apple.id})

#puts contacts.inspect

puts "Contacts: #{Contact.all.count}"

for contact in apple.contacts
     puts "#{contact.first_name} #{contact.last_name} - #{contact.email} - #{contact.company.name}" 
end
#The last one variable is similar to company = contact.company
for contact in amazon.contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email} - #{contact.company.name}"
end

for contact in tesla.contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email} - #{contact.company.name}"
end

#puts apple.contacts.inspect

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com - Amazon.com, Inc.
# Craig Federighi - craig@apple.com - Apple Inc.
# Elon Musk - elon@tesla.com - Tesla, Inc.
# Tim Cook - tim@apple.com - Apple Inc.

# 2. similar to above, but this time organized by company, write code to display each company (name) and its contacts, e.g.:

# ---------------------------------
# Apple Inc.
# Tim Cook - tim@apple.com
# Craig Federighi - craig@apple.com
#
# Amazon.com, Inc.
# Andy Jassy - andy@amazon.com
#
# Tesla, Inc.
# Elon Musk - elon@tesla.com

puts ""

companies = Company.all

for company in companies
    puts company.name
    
    contacts = company.contacts #We have a method that just pulls this company's contacts

    for contact in contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"

    end
    puts ""
end

# puts "Contacts: #{Contacts.all.count}"
# contacts = Contact.all
# company = contact.company


# apple_id = apple.id
# contacts = Contact.where(company_id: apple_id)

# p "Contacts at Apple: #{contacts.count}"
# for contact in contacts
#     p "#{contact.first_name} #{contact.last_name}"
# end

# for companies in Company

#     puts "#{Company.name}"

# end

# for contact in contacts
#      puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
#  end




# john = Contact.where({ first_name: "John"})[0]

# puts john.company.inspect