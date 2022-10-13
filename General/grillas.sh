#!/bin/bash

name1="bb1.grd"
name2="bb2.grd"
name3="secundaria1_027.xyz"
rm $name1 $name2 $name3

REGION1="-71.9956034361/-62.4946289062/17.0987636482/19.9981280813"
#REGION1="286.1828/287.1818/-37.3852/-36.4942"
gmt grdsample HaitiG2_1.tif -G$name2 -R$REGION1 -I0.27m= -V 
#gmt grdcut Lituya.grd.grd -G$name1 -R$REGION1 -V
gmt grd2xyz $name2 > $name3

#REGION2="283.5/287.82/-47.0/-33.608"

# REGION2="286.1833333333/287.1833333333/-37.38333333333/-36.5"
#gmt grdsample $name1 -G$name2 -R$REGION2 -I0.036 -V -T  

#gmt grd2xyz $name2 | sort -k2 -k1 -g | awk '{print $1, $2, $3*(-1)}' > $name3


