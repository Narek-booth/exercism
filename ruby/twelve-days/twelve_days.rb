=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays
  @num = %w[null first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth].freeze

  @gifts = [
    "a Partridge in a Pear Tree.",
    "two Turtle Doves",
    "three French Hens",
    "four Calling Birds",
    "five Gold Rings",
    "six Geese-a-Laying",
    "seven Swans-a-Swimming",
    "eight Maids-a-Milking",
    "nine Ladies Dancing",
    "ten Lords-a-Leaping",
    "eleven Pipers Piping",
    "twelve Drummers Drumming",
  ].freeze

  def self.song
    (1..12).map { |day| line(day) }.join("\n\n").concat("\n")
  end

  def self.line(number)
    "On the #{@num[number]} day of Christmas my true love gave to me: #{given(number)}"
  end

  def self.given(number)
    return @gifts.first if number == 1

    @gifts[1, number - 1].
      reverse.
      join(', ').
      concat(', and ').
      concat(@gifts.first)
  end
end