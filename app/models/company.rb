class Company < ApplicationRecord
    has_many :contacts #The ApplicationRecord library actually gives us the "has_many" function because it knows
                        #that we often want the children of our parent in the records. So we're just 

    # Def contacts
    #     Contact.where({ company_id: (read_attribute(:id) )})
    # end
    
end
