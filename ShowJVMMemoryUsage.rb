######################################################################
## File path:     /share/ruby/petrasys/ShowJVMMemoryUsage.rb
## Version:       
## Description:   Calling main with an array of Strings, in this case empty
## Author:        Rick Charon <rickcharon@gmail.com>
## Created at:    Wed Mar  2 13:54:36 2011
## Modified at:   Thu May  5 14:07:29 2011
######################################################################

# Note main is a static method,

include Java
require '/share/JavaDev/ptscharts/dist/ptscharts.jar'
include_class Java::ptscharts.javaExamples.PtsMemoryUsage

tt = [].to_java :String 
PtsMemoryUsage.main(tt)
