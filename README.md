# yEd_network_palettes
yEd graphml palettes for network diagrams - My symbols for Visio replacement


## What this repo contains

These are the yEd pallettes (a.k.a. stencils) that I use for creating network diagrams.

My goal was to be able to replace Visio with yEd as my primary network diagram tool.

## What is yEd

yEd graph editor is a powerful and  free to use graph and diagram tool.

You can find more information and download the tool here: https://www.yworks.com/products/yed

## What network symbols are already available for yEd

yEd does not contain many network diagram symbols in its default palette (I think there are 12 total)

There are some other palette sets created by others that I have used.
But they alone were insufficient for my needs.

Here are some links to these graphml pallette sets.

* https://github.com/pafnow/vrt-graphml-for-yed
* https://github.com/JustDerb/yed-aws-palettes

## How do you create a palette set for yEd

yEd has a built in palette manager that allows you to create new palettes and import symbols in SVG format.

Using this I was able to create the palettes I needed for network diagrams that you will find here.

## Where do the SVG icons in my palettes come from

For Cisco icons:
* I have used the official Cisco.com site here https://www.cisco.com/c/en/us/about/brand-center/network-topology-icons.html
  * This requires conversion of EPS to SVG
  * I used Inkscape for this
    * These are the instructions I found on web that didn't work for me (maybe different OS?)
      * For one file ```inkscape input-file.eps --export-plain-svg=output-file.svg```
      * For multiple files ```for %%f in (*.eps) do inkscape "%%f" --export-plain-svg="%%f.svg"```
    * These are the commands I used on Ubuntu
      * For one file ```/usr/bin/inkscape input-file.eps --export-plain-svg=output-file.svg```
      * For multiple files ```for i in $( ls *.eps ); do /usr/bin/inkscape $i --export-plain-svg=$i.svg; done```
* I also used some SVG icons from this project https://sourceforge.net/projects/nedi2graphml/
  * These came from the same Cisco source and were already converted to SVG format but were missing some icons I needed


To change the default icon colors I used sed

```for i in $( ls *.svg ); do sed -i 's/087bbb/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/78b3da/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/328fc7/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/1286be/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/026c9b/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/036998/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/02709f/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/087fbf/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/2b669e/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/2b659d/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/036897/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/20a3e4/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/43b6ea/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/1d76a0/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/242021/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/afdff4/000000/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/1c7ba7/000000/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/8ed0f2/FFFFFF/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/78b5dd/FFAA00/' $i; done```
```for i in $( ls *.svg ); do sed -i 's/014c6c/FFAA00/' $i; done```
