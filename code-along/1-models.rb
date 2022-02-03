# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

puts Company.all.count

puts "There are #{Company.all.count} companies"

# 2. create new companies
# If you look in db/schema.rb, you can see the columns available in the Company table
values = {
    name: "Apple",
    url: "https://apple.com",
    city: "Cupertino",
    state: "CA"
}
company = Company.new(values)
company.save #writes your code into the SQL database

puts "There are #{Company.all.count} companies"

values = {
    name: "Amazon",
    url: "https://amazon.com",
    city: "Seattle",
    state: "WA"
}
company = Company.new(values)
company.save 

puts "There are #{Company.all.count} companies"

company = Company.new
company.write_attribute(:name, "Tesla")
company.write_attribute(:url, "https://tesla.com")
company.write_attribute(:city, "Palo Alto")
company.write_attribute(:state, "CA")
company.save 

puts "There are #{Company.all.count} companies"

# 3. query companies table

puts ""
puts Company.all.inspect

companies = Company.where({state: "CA"})
puts ""
puts companies.inspect

apple = Company.where({state: "CA"})[0]
puts ""
puts apple.inspect

puts apple.read_attribute(:url)

# 4. read column values from row
#puts "#{apple.read_attribute(:name)} has a website: #{apple.read_attribute(:url)}" --The shortcut below does the same thing
puts "#{apple.name} has a website #{apple.url}"

# 5. update attribute value

#apple.write_attribute(:slogan, "Think Different.") --The shorcut below does the same thing
apple.slogan = "Think Different."
apple.save


#Delete row
tesler = Company.new({ name: "Tesler" })
tesler.save

tesler.destroy #I want to delete this row because it's spelled wrong