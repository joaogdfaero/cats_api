response = RestClient.get(ENV["BASE_URL"]+"/breeds")
breeds_array = JSON.parse(response)


binding.pry