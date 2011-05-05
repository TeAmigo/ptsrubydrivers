######################################################################
## File path:     /share/ruby/petrasys/indicators1.rb
## Version:       
## Description:   Create 3 time val charts, 1min, 1hr, and daily for syms in db
## Author:        Rick Charon <rickcharon@gmail.com>
## Created at:    Thu Mar 10 22:18:43 2011
## Modified at:   Thu May  5 14:08:50 2011
## This program is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License
## as published by the Free Software Foundation; either version 2
## of the License, or (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
######################################################################

# To switch to the inf-ruby buffer once it's running, use C-c C-z
# To run in debug mode using Netbeans, do C-c C-s with arg, and choose jruby-debug
# then Debug/Attach Debugger/Socket Attach ion Netbeans, and pick port 7000 Walla!
# AUD CAD DX  ES EUR GBP JPY - current symbols
include Java
require 'rubygems'
require '/share/JavaDev/ptscharts/dist/ptscharts.jar'
include_class Java::ptscharts.PtsSymbolInfos
include_class Java::ptscharts.indicators.IndicatorSet1
include_class Java::org.joda.time.DateTime
syminfs = PtsSymbolInfos.new()
syminfs.get_distinct_symbol_infos
factory = Java::ptscharts.PtsChartFactory.new(syminfs)

audm = IndicatorSet1.run(factory,'AUD', DateTime.new().minusDays(1).toString, 
                         DateTime.new().plusMinutes(1).toString, 1)
audh = IndicatorSet1.run(factory,'AUD', DateTime.new().minusWeeks(3).toString, 
                         DateTime.new().plusHours(1).toString, 60)
audd = IndicatorSet1.run(factory,'AUD', '2009-03-11T00:00', DateTime.new().plusDays(1).toString, 60 * 24)

cadm = IndicatorSet1.run(factory,'CAD', DateTime.new().minusDays(1).toString, DateTime.new().toString, 1)
cadh = IndicatorSet1.run(factory,'CAD', DateTime.new().minusWeeks(3).toString, 
                         DateTime.new().plusHours(1).toString, 60)
cadd = IndicatorSet1.run(factory,'CAD', '2009-03-11T00:00', DateTime.new().plusDays(1).toString, 60 * 24)

dxm = IndicatorSet1.run(factory,'DX', DateTime.new().minusDays(1).toString, DateTime.new().toString, 1)
dxh = IndicatorSet1.run(factory,'DX', DateTime.new().minusWeeks(3).toString, 
                        DateTime.new().plusHours(1).toString, 60)
dxd = IndicatorSet1.run(factory,'DX', '2009-03-11T00:00', DateTime.new().plusDays(1).toString, 60 * 24)

esm = IndicatorSet1.run(factory,'ES', DateTime.new().minusDays(1).toString, DateTime.new().toString, 1)
esh = IndicatorSet1.run(factory,'ES', DateTime.new().minusWeeks(3).toString, 
                        DateTime.new().plusHours(1).toString, 60)
esd = IndicatorSet1.run(factory,'ES', '2009-03-11T00:00', DateTime.new().plusDays(1).toString, 60 * 24)

eurm = IndicatorSet1.run(factory,'EUR', DateTime.new().minusDays(1).toString, DateTime.new().toString, 1)
eurh = IndicatorSet1.run(factory,'EUR', DateTime.new().minusWeeks(3).toString, 
                         DateTime.new().plusHours(1).toString, 60)
eurd = IndicatorSet1.run(factory,'EUR', '2009-03-11T00:00', DateTime.new().plusDays(1).toString, 60 * 24)

gbpm = IndicatorSet1.run(factory,'GBP', DateTime.new().minusDays(1).toString, DateTime.new().toString, 1)
gbph = IndicatorSet1.run(factory,'GBP', DateTime.new().minusWeeks(3).toString, 
                         DateTime.new().plusHours(1).toString, 60)
gbpd = IndicatorSet1.run(factory,'GBP', '2009-03-11T00:00', DateTime.new().plusDays(1).toString, 60 * 24)

jpym = IndicatorSet1.run(factory,'JPY', DateTime.new().minusDays(1).toString, DateTime.new().toString, 1)
jpyh = IndicatorSet1.run(factory,'JPY', DateTime.new().minusWeeks(3).toString, 
                         DateTime.new().plusHours(1).toString, 60)
jpyd = IndicatorSet1.run(factory,'JPY', '2009-03-11T00:00', DateTime.new().plusDays(1).toString, 60 * 24)
# ZB 30 yr
zbm = IndicatorSet1.run(factory,'ZB', DateTime.new().minusDays(1).toString, DateTime.new().toString, 1)
zbh = IndicatorSet1.run(factory,'ZB', DateTime.new().minusWeeks(3).toString, 
                         DateTime.new().plusHours(1).toString, 60)
zbd = IndicatorSet1.run(factory,'ZB', '2009-03-11T00:00', DateTime.new().plusDays(1).toString, 60 * 24)

# ZF 5 yr
zfm = IndicatorSet1.run(factory,'ZF', DateTime.new().minusDays(1).toString, DateTime.new().toString, 1)
zfh = IndicatorSet1.run(factory,'ZF', DateTime.new().minusWeeks(3).toString, 
                         DateTime.new().plusHours(1).toString, 60)
zfd = IndicatorSet1.run(factory,'ZF', '2009-03-11T00:00', DateTime.new().plusDays(1).toString, 60 * 24)

# ZN 10 yr
znm = IndicatorSet1.run(factory,'ZN', DateTime.new().minusDays(1).toString, DateTime.new().toString, 1)
znh = IndicatorSet1.run(factory,'ZN', DateTime.new().minusWeeks(3).toString, 
                         DateTime.new().plusHours(1).toString, 60)
znd = IndicatorSet1.run(factory,'ZN', '2009-03-11T00:00', DateTime.new().plusDays(1).toString, 60 * 24)

eur.methods
eur.setJumpBarSize 1
cad.jumpBars 30
eur.show
Process.pid 

# aud.ohlcv.getItemCount
# aud.ohlcv.PriceBars.getPeriod(aud.ohlcv.getLastItemCount - 1).getStart.toString

# ohlcv = chart1.getOhlcv
# dd = ohlcv.getCloses
# dd.length
# dd.to_a
# chart1.jump
znh.show
