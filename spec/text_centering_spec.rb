require 'rspec'
require 'text_centering'

describe TextCenter do
  before do
    @string = <<STRING.chomp
this is a short line
this is a really long line that has a lot of characters
and this is
short
STRING
  end
  it 'centers string according to length of longest string' do
    string_list = TextCenter.new(@string)

    expected = <<STRING.chomp
                 this is a short line
this is a really long line that has a lot of characters
                      and this is
                         short
STRING

    expect(string_list.center).to eq(expected)

  end
end