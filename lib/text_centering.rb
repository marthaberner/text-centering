class TextCenter

  def initialize(strings)
    @strings = strings
  end

  def center
    line_list = @strings.split("\n")
    max_length = line_list.sort_by { |line| line.length }.last.length

    line_list.map do |line|
      line.center(max_length).rstrip
    end.join("\n")
  end
end