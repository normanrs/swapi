class SwapiService
 attr_reader :q

 def initialize(q)
  @q = q
 end

 def results
   get_json
 end

 def get_json
   @response ||= Faraday.get("https://swapi.co/api/people/?search=#{@q}")
   JSON.parse(@response.body, symbolize_names: true)[:results][0]
 end

 def get_species(url)
   @species_response ||= Faraday.get(url)
   JSON.parse(@species_response.body, symbolize_names: true)
 end

end
