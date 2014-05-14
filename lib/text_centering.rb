class TextCenter

  def initialize(strings)
    @strings = strings
  end

  def center
    line_list = @strings.split('\n')
    line_list.each do |line|
      line.ljust(12)
    end
  end
end