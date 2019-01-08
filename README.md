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

For Cisco Network Topology icons:
* I have used the official Cisco.com site here https://www.cisco.com/c/en/us/about/brand-center/network-topology-icons.html
  * This requires conversion of EPS to SVG
  * I used Inkscape for this
    * These are the instructions I found on web that didn't work for me (maybe works on a different OS?)
      * For one file ```inkscape input-file.eps --export-plain-svg=output-file.svg```
      * For multiple files ```for %%f in (*.eps) do inkscape "%%f" --export-plain-svg="%%f.svg"```
    * These are the commands I used on my Ubuntu 18 rig
      * For one file ```/usr/bin/inkscape input-file.eps --export-plain-svg=output-file.svg```
      * For multiple files ```for i in $( ls *.eps ); do /usr/bin/inkscape $i --export-plain-svg=$i.svg; done```
For Other icons:
* I have used some icons from the official Fortinet site here https://www.fortinet.com/resources/icon-library.html
  * This set is provided as a powerpoint document which I extracted the icons from simply by renaming it .zip and opening the media folder
  * The icons I chose to use from this set were in emf format (enhanced windows metafile)
  * Using this awesome emf2svg tool I was able to convert them https://github.com/kakwa/libemf2svg
    * This is the command I used to convert these files using this tool
      * ```for f in *.emf; do emf2svg-conv -i $f -o ${f%.emf}.svg -v; done```
* I also referenced the SVG icons from this project https://sourceforge.net/projects/nedi2graphml/
  * I liked the color set they did and looked at what color codes they used for creating my own icon sets

## How to standardize the icon colors and create color sets

To change the colors I used sed on the svg files which are just text files that can be manipulated.

To get a single color from the base images this required quite a few sed passes as the vendors used many color variations.

I started with converting to the color Orange1 which is a light orange so I could tell where I missed any of the original color.

* ```for i in $( ls *.svg ); do sed -i "s/087bbb/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/78b3da/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/328fc7/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/1286be/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/026c9b/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/036998/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/02709f/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/087fbf/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/2b669e/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/2b659d/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/036897/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/20a3e4/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/43b6ea/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/1d76a0/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/242021/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/78b5dd/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/014c6c/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/3ca7e4/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/026b9a/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/0881c1/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/2c6aa2/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/1089c2/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/1d446d/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/5db2e6/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/4296d8/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/087dbd/FFAA00/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/0d6e9c/FFAA00/" $i; done```

To make each color after that was a single sed pass.

* Blue ```for i in $( ls *.svg ); do sed -i "s/FFAA00/0065A2/" $i; done```
* Aqua ```for i in $( ls *.svg ); do sed -i "s/FFAA00/008998/" $i; done```
* Cyan ```for i in $( ls *.svg ); do sed -i "s/FFAA00/00B38A/" $i; done```
* Green ```for i in $( ls *.svg ); do sed -i "s/FFAA00/B5BF00/" $i; done```
* Yellow ```for i in $( ls *.svg ); do sed -i "s/FFAA00/FED100/" $i; done```
* Orange2 ```for i in $( ls *.svg ); do sed -i "s/FFAA00/FF5A00/" $i; done```
* Red ```for i in $( ls *.svg ); do sed -i "s/FFAA00/CC092F/" $i; done```
* Brown ```for i in $( ls *.svg ); do sed -i "s/FFAA00/7B2927/" $i; done```
* Grey ```for i in $( ls *.svg ); do sed -i "s/FFAA00/707070/" $i; done```

For White I first took any white and changed it to Black, then I converted to White

* ```for i in $( ls *.svg ); do sed -i "s/[fF][fF][fF][fF][fF][fF]/000000/" $i; done```
* ```for i in $( ls *.svg ); do sed -i "s/FFAA00/FFFFFF/" $i; done```
