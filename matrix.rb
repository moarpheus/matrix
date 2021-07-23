class Matrix
  def initialize(input)
    @matrix = input
  end

  def rows
    @matrix.split("\n")
           .map {|e| e.split(' ').map {|e| e.to_i}}
  end

  def columns
    output = []
    i = 0
    while (i < rows.first.size)
      output << rows.map {|e| e[i]}
      i += 1
    end
    output
  end
end
