require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
def remove_strawberry(contacts)
=begin
  contacts.each do |key, value|
    if key == :favorite_ice_cream_flavors
      if value.include?("strawberry")
        value.shift
      end
    end
  end
=end
  contacts.each do |person, value_hash|
    if person == "Freddy Mercury"
      value_hash.each do |key, value|
        if key == :favorite_ice_cream_flavors
          value.delete_if do |ice_cream|
            ice_cream == "strawberry"
          end
        end
      end
    end
  end
end
