# COLLECTING API DATA
response = RestClient.get(ENV["BASE_URL"]+"/breeds")
breeds_array = JSON.parse(response)

#USING API DATA COLLECTED
breeds_array.each do |breed|
    Cat.create(name: breed["name"], origin: breed["origin"])
end

