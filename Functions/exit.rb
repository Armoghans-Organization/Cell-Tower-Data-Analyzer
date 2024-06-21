module Exit_Message
    def self.exit_message
        #   print_banner
      ColoredText.blue("Thanks for using #{$name} by #{$author}.")
      exit
    end
end
