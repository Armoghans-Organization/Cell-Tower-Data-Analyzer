module Press_Enter
    def self.press_enter
      ColoredText.yellow("Press Enter to continue...")
      gets.chomp
      system("clear") || system("cls") # Clear the console
    end
end