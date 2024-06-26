module BannerPrinter
  # Method to print the contents of an ASCII banner from a file
  def self.print_banner
    # Specify the path to the ASCII banner file
    banner_file = "banner.txt"

    # Check if the banner file exists
    if File.exist?(banner_file)
      # Print the contents of the ASCII banner file
      ColoredText.magenta( File.read(banner_file))
    else
      # Print an error message if the banner file is not found
      ColoredText.red( "Banner file not found: #{banner_file}")
    end
  end

  # Method to print the Linux-Util banner
  def self.print_banner_text
    # Clear the screen
    system('clear') || system('cls')

    # Print the banner and messages
    print_banner
    puts
    ColoredText.blue("-----------------------------------------------------------------------------------")
    ColoredText.cyan("Welcome to #{$name} - #{$description}")
    ColoredText.cyan("Author: #{$author}")
    ColoredText.blue("-----------------------------------------------------------------------------------")
    puts
  end
end