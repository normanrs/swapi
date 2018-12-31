class Search

  def initialize(q)
    @q = q
  end

  def name
    returned[:name]
  end

  def height
    returned[:height]
  end

  def mass
    returned[:mass]
  end

  def birth_year
    returned[:birth_year]
  end

  def gender
    returned[:gender]
  end

  def returned
    @service = SwapiService.new(@q)
    @service.results
  end

  def species
    returned[:species].map do |spec|
      @service.get_species(spec)
    end
  end

end
