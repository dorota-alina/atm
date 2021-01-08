clear
echo "Are you sure you're done here? [Y/N] "
read DONE
#
if [[($DONE == "y" || $DONE == "Y")]]; 
then
clear
echo "You've been logged out sucessfully. We'll miss you!"
sleep 2
clear
exit 0
#
elif [[($DONE == "n" || $DONE == "N")]]; 
then
./menu.sh
#
else
clear
echo "Please enter either Y or N."         
read 
./close.sh
fi
exit 0 

