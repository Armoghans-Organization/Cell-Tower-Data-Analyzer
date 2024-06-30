require 'csv'

module AverageSignalAnalyzer
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

    def average_signal_strength
      total_signal_strength = @data.reduce(0) { |sum, tower| sum + tower[:signal_strength] }
      total_signal_strength / @data.size.to_f
    end

    def display_average_signal_strength
      ColoredText.green("Average Signal Strength: #{average_signal_strength.round(2)}")
      exit
    end
  end
end