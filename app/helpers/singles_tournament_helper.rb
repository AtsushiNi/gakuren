module SinglesTournamentHelper
  def courts(str)
    array = str.scan(/../)
    array.map do |n|
      n.to_i
    end
  end
end
