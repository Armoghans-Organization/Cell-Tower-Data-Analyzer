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
require_relative 'Functions/exit'
require_relative 'Modules/banner'
require_relative 'Functions/menu'

include ColoredText
include Press_Enter
include Exit_Message
include BannerPrinter
include Menu

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


BannerPrinter.print_banner_text
Menu.display_menu