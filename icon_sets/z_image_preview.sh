#!/bin/bash
echo "<table><tr><td>";
for i in $( ls *.svg ); do echo "<img src='$i' alt='$i' width='50px' /> "; done
echo "</td></tr></table>";

