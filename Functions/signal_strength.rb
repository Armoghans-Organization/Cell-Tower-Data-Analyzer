require 'csv'

module CellTowerDataAnalyzer
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

    def strongest_signal_tower
      @data.max_by { |tower| tower[:signal_strength] }
    end

    def display_average_signal_strength
      puts "Average Signal Strength: #{average_signal_strength.round(2)}"
    end

    def display_strongest_signal_tower
      strongest_tower = strongest_signal_tower
      puts "Tower with Strongest Signal: ID #{strongest_tower[:id]}, Signal Strength #{strongest_tower[:signal_strength]}"
    end
  end

  def self.analyze(file_path)
    Analyzer.new(file_path)
  end
end

# Usage


# Calling individual methods
