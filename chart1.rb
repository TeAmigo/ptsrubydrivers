######################################################################
## File path:     /share/ruby/petrasys/chart1.rb
## Version:       
## Description:   Added jumpBars
## Author:        Rick Charon <rickcharon@gmail.com>
## Created at:    Sun Dec 26 15:48:57 2010
## Modified at:   Mon Jan 10 18:25:37 2011
######################################################################
#syminfs.methods()
#sym.methods
#factory.methods
#sym.getFullName

include Java
require '/share/JavaDev/ptscharts/dist/ptscharts.jar'
include_class Java::ptscharts.PtsSymbolInfos
syminfs = PtsSymbolInfos.new()
syminfs.get_distinct_symbol_infos
factory = Java::ptscharts.PtsChartFactory.new(syminfs)


sym = syminfs.getSymbolInfo('AUD')


chart1 = factory.createPtsChart('AUD', '2009-03-11', '2009-05-02', 60)
#chart1.methods
chart1.show

chart1.setJumpBarSize 4
#chart1.jumpBars(24)

chart2 = factory.createPtsChart("AUD", "2009-03-11", "2011-01-01", 60 * 24)
chart2.show

chartdx = factory.createPtsChart("DX", "2009-03-06", "2011-01-01", 60 * 24)
chartdx.show

java_import java.awt.Font
java_import javax.swing.UIManager
UIManager.put("ToolTip.font", Font.new("dialog", Font::PLAIN, 18))

chartdx60 = factory.createPtsChart("DX", "2010-09-01", "2011-01-04", 60)
chartdx60.show
chartdx60.destroy

EUR    | 2009-01-02 03:00:00 | 2011-01-03 17:13:00
charteur = factory.createPtsChart("EUR", "2009-01-02", "2011-01-04", 60 * 24)
charteur.show
charteur60 = factory.createPtsChart("EUR", "2009-10-21", "2009-12-31", 60)
charteur60.show

chartcad =  factory.createPtsChart("CAD", "2010-03-29", "2010-04-28", 60)
chartcad.show
chartcad.setJumpBarSize 4

chartes = factory.createPtsChart("ES", "2009-03-11", "2011-01-04", 60 * 24)
chartes.show

chartes60 = factory.createPtsChart("ES", "2009-03-11", "2009-05-04", 60)
chartes60.show
chartes60.setJumpBarSize 4


