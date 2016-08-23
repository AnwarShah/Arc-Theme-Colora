#!/bin/bash
#
#                                       
# MMMMMMMMMMMMMMMMMMMMMMMMMmds+.        
# MMm----::-://////////////oymNMd+`     
# MMd      /++                -sNMd:    
# MMNso/`  dMM    `.::-. .-::.` .hMN:   
# ddddMMh  dMM   :hNMNMNhNMNMNh: `NMm   
#     NMm  dMM  .NMN/-+MMM+-/NMN` dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  .mmd  `mmm   yMM. dMM   
#     NMm  dMM`  ..`   ...   ydm. dMM   
#     hMM- +MMd/-------...-:sdds  dMM   
#     -NMm- :hNMNNNmdddddddddy/`  dMM   
#      -dMNs-``-::::-------.``    dMM   
#       `/dMNmy+/:-------------:/yMMM  
#          ./ydNMMMMMMMMMMMMMMMMMMMMM  
#             \.MMMMMMMMMMMMMMMMMMM    
#                                      
#
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
# 
# More from Erik Dubois
#
# Aurora Conky
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at 
# http://erikdubois.be/category/linux/aurora-conky/
# 
# Aureola Conky
# Collections of nice conky's with lua syntax
# https://github.com/erikdubois/Aureola
#
# Sardi icons
# Many different styles of icons from colourfull, monochrome, white, circle
# https://sourceforge.net/projects/sardi/
#
# Super Ultra Flat Numix Remix
# Colourfull and playfull icons
# https://github.com/erikdubois/Super-Ultra-Flat-Numix-Remix
#
# Check out the github - many more scripts for automatic installation of Linux Systems.
#
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################

echo "It is time for you to take a coffee."
echo "It will take as long as it takes depending on cpu etc..."


echo "making the assets of gtk-2.0"
echo
cd common/gtk-2.0
echo "making the assets of gtk-2.0/render-assets"
echo
sh render-assets.sh
echo "making the assets of gtk-2.0/render-dark-assets"
echo
sh render-dark-assets.sh

echo "making the assets of gtk-3.0"

cd ../gtk-3.0/3.14/
echo "making the assets of gtk-3.0/3.14"
echo
sh render-assets.sh
cd ../3.16/
echo "making the assets of gtk-3.0/3.16"
echo
sh render-assets.sh
cd ../3.18/
echo "making the assets of gtk-3.0/3.18"
echo
sh render-assets.sh
cd ../3.20/
echo "making the assets of gtk-3.0/3.20"
echo
sh render-assets.sh

echo -e "\e[31mAll assets have been made."
echo "Svg's have been exported from the assets svg files"
echo "and converted to png's"
echo
echo "Next up is installing the icon theme."
echo "Type the following commands in the terminal"
echo
echo "./autogen.sh --prefix=/usr"
echo "sudo make install"
echo
echo "Your themes will be installed in /usr/share/themes"
echo "Select it with your theme manager."