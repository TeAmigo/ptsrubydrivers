include Java
require '/share/javalibs/joda-time/joda-time-1.6/joda-time-1.6.jar'
require '/share/JavaDev/ptscharts/dist/lib/joda-time-1.6.jar'
require '/share/JavaDev/ptscharts/dist/ptscharts.jar'

##So far, none of this really works except the joda time loaded from the javalibs, 
## Classpath???

java_import ptscharts.SymbolInfos
dt = Java::org.joda.time.DateTime.new() #Works with require '/share/JavaDev/ptscharts/dist/lib/joda-time-1.6.jar'
dt.to_string

## This works with require '/share/JavaDev/ptscharts/dist/ptscharts.jar'
include_class Java::ptscharts.SymbolInfos
syminfs = SymbolInfos.new()
# This works too, without the include_class - syminfs = Java::ptscharts.SymbolInfos.new()
syminfs.methods()
syminfs.get_distinct_symbol_infos
sym = syminfs.getSymbolInfo('AUD')
sym.methods
sym.getFullName
factory = Java::ptscharts.PtsChartFactory.new(syminfs)
factory.methods
chart1 = factory.createPtsChart('AUD', '2009-12-09', '2010-02-01', 60)
chart1.methods
chart1.show
chart1.jumpBars(24 * 5)
## WHALLA! GOTTA CHART!
#################

