require_relative 'fake_dataset'

include DataGenerator

module Menu
  def self.display_menu
    loop do
      ColoredText.blue("Choose an option:")
      ColoredText.magenta("1. Display Average Signal Strength")
      ColoredText.magenta("2. Display Tower with Strongest Signal")
      ColoredText.magenta("3. Generate Fake Dataset")
      ColoredText.magenta("4. Exit")

      print "Enter your choice: "
      choice = gets.chomp.to_i

      case choice
      when 1
        # display_average_signal_strength
      when 2
        # display_strongest_signal_tower
      when 3
        puts "How many rows of data would you like to generate?"
        num_rows = gets.chomp.to_i
        data_generator = DataGenerator::CellTowerData.new
        data_generator.generate_data(num_rows)
        Press_Enter
      when 4
          BannerPrinter.print_banner_text
          Exit_Message.exit_message
      else
        puts
        ColoredText.red("Invalid choice. Please enter a number from 1 to 4.")
        puts
      end
    end
  end
end