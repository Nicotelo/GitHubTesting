#require 018_Modulos # require es para decir que necesitamos X archivo para funcionar
require_relative "018_Modulos.rb"  # misma función, pero teniendo en cuenta que al ser relativo, está en la misma folder
include Tools

Tools.sayhi("Mick")
Tools.saybye("Mick")