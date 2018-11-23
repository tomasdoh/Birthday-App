class User

  def self.name(name)
    @name = name
  end

  def self.instance
    @name
  end

end
