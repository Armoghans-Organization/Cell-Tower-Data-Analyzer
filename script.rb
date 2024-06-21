#!/usr/bin/env ruby

#
# Cell Tower Data Analyzer: A Ruby tool for parsing, analyzing, and visualizing data from cell towers, aiding in network optimization and decision-making.
#
# Author: Armoghan-ul-Mohmin
#
# More info here: https://github.com/Armoghans-Organization/Cell-Tower-Data-Analyzer.git
#
# Usage: ruby script.rb [OPTIONS]
# Example: ruby script.rb --help
#


require_relative 'Modules/colored_text'
require_relative 'Functions/enter'

include ColoredText
include Press_Enter

##########################################################################
# Globals
##########################################################################

# Script Author Name
$author = "Armoghan-ul-Mohmin"
# Script Name
$name = "Cell Tower Data Analyzer"
# Script Version
$version = "1.0.0"
# Script Description
$description = "Analyzing & Visualizing data from CellTowers"
# Script URL
$url = "https://github.com/Armoghans-Organization/Cell-Tower-Data-Analyzer"


Press_Enter.press_enter
ColoredText.red("This is red text")
Press_Enter.press_enter
ColoredText.green("This is green text")
Press_Enter.press_enter
ColoredText.yellow("This is yellow text")
Press_Enter.press_enter
ColoredText.blue("This is blue text")
Press_Enter.press_enter
ColoredText.magenta("This is magenta text")
Press_Enter.press_enter
ColoredText.cyan("This is cyan text")