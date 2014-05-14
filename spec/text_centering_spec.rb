require 'rspec'
require 'text_centering'

describe TextCenter do
  before do
    @string = <<STRING
   this is a short line
   this is a really long line that has a lot of characters
   and this is
   short
STRING
  end
  it 'prints the strings on different lines' do
    string_list = TextCenter.new(@string)

    expected = <<STRING
                    this is a short line
this is a really long line that has a lot of characters
                      and this is
                         short
STRING

    expect(string_list.center).to eq(expected)

  end
end