require 'csv'

module StrongestSignalAnalyzer
  class Analyzer
    attr_reader :data

    def initialize(file_path)
      @file_path = file_path
      @data = []
      read_data
    end

    def read_data
      CSV.foreach(@file_path, headers: true) do |row|
        @data << {
          id: row['id'].to_i,
          latitude: row['latitude'].to_f,
          longitude: row['longitude'].to_f,
          signal_strength: row['signal_strength'].to_i
        }
      end
    end

    def strongest_signal_tower
      @data.max_by { |tower| tower[:signal_strength] }
    end

    def display_strongest_signal_tower
      strongest_tower = strongest_signal_tower
      ColoredText.green("Tower with Strongest Signal: ID #{strongest_tower[:id]}, Signal Strength #{strongest_tower[:signal_strength]}")
      exit
    end
  end
end