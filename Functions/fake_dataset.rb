require 'csv'
require 'faker'

module DataGenerator
  class CellTowerData
    attr_reader :file_path, :num_rows

    def initialize(file_path = 'cell_towers.csv')
      @file_path = file_path
    end

    def generate_data(num_rows)
      @num_rows = num_rows

      if File.exist?(file_path)
        puts
        ColoredText.blue("Choose an option:")
        ColoredText.magenta("File found. What would you like to do?")
        ColoredText.magenta("1. Append additional data")
        ColoredText.magenta("2. Overwrite existing data")
        choice = gets.chomp.to_i

        case choice
        when 1
          append_data
        when 2
          overwrite_data
        else
          puts
          ColoredText.red("Invalid choice. Please try again.")
        end
      else
        create_new_data
      end
    end

    private

    def append_data
      CSV.open(file_path, 'a') do |csv|
        current_size = CSV.read(file_path, headers: true).size
        num_rows.times do |i|
          id = current_size + i + 1
          latitude = Faker::Address.latitude
          longitude = Faker::Address.longitude
          signal_strength = rand(-120..-30) # Typical signal strength range in dBm
          csv << [id, latitude, longitude, signal_strength]
        end
      end
      puts
      ColoredText.green("#{num_rows} additional rows generated and appended to #{file_path}")
    end

    def overwrite_data
      CSV.open(file_path, 'w') do |csv|
        csv << ['id', 'latitude', 'longitude', 'signal_strength']
        generate_rows(csv)
      end
      puts
      ColoredText.green("#{num_rows} rows generated and overwrote #{file_path}")
    end

    def create_new_data
      CSV.open(file_path, 'w') do |csv|
        csv << ['id', 'latitude', 'longitude', 'signal_strength']
        generate_rows(csv)
      end
      puts
      ColoredText.green("#{num_rows} rows generated and created #{file_path}")
    end

    def generate_rows(csv)
      num_rows.times do |i|
        id = i + 1
        latitude = Faker::Address.latitude
        longitude = Faker::Address.longitude
        signal_strength = rand(-120..-30) # Typical signal strength range in dBm
        csv << [id, latitude, longitude, signal_strength]
      end
    end
  end
end

