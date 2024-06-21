# colored_text.rb

module ColoredText
    COLORS = {
      red: "\e[31m",
      green: "\e[32m",
      yellow: "\e[33m",
      blue: "\e[34m",
      magenta: "\e[35m",
      cyan: "\e[36m"
    }.freeze
  
    NC = "\e[0m"
  
    def self.print_message(color, message)
      color_code = COLORS[color.to_sym] || "\e[39m" # Default to white if color not found
      puts "#{color_code}#{message}#{NC}"
    end
  
    def self.red(message)
      print_message(:red, message)
    end
  
    def self.green(message)
      print_message(:green, message)
    end
  
    def self.yellow(message)
      print_message(:yellow, message)
    end
  
    def self.blue(message)
      print_message(:blue, message)
    end
  
    def self.magenta(message)
      print_message(:magenta, message)
    end
  
    def self.cyan(message)
      print_message(:cyan, message)
    end
  end