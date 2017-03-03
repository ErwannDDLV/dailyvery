class Indian
  attr_reader :name

  def initialize
    init_arrays
    @name = new_name
  end

  private
  def check_tribe
    Request.where.not(code: nil).map {|k| k.code}
  end

  def init_arrays
    @description = %w(Petit Grand Joli Elégant Gros)
    @animal = %w(Lapin Renard Bison Mulot Faucon Serpent)
    @skill = %w(Malin Rapide Agile Sympa Sérieux Vaillant Bavard)
  end

  def random_name
    "#{@description.sample} #{@animal.sample} #{@skill.sample}"
  end

  def new_name
    tribe = check_tribe
    name = random_name
    while tribe.include?(name)
      name = random_name
    end
    name
  end


end
