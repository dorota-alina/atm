#!/bin/bash

#Script name: ATM

clear
echo "Loading..."
sleep 1
clear
#
options ()
{
clear
echo "                                       [OPTIONS]"
echo
#
for options in [1]_Balance [2]_Deposit [3]_Withdrawal [4]_Transactions [5]_Change_password [6]_Exit
do
echo "$options"
done
echo
echo "How can I help you? Please select option 1 - 6. "
read OPTIONS
#
if [ $OPTIONS == "1" ]; then
./balance.sh
#
elif [ $OPTIONS == "2" ]; then
./deposit.sh
#
elif [ $OPTIONS == "3" ]; then
./withdrawal.sh
#
elif [ $OPTIONS == "4" ]; then
./transactions.sh
#
elif [ $OPTIONS == "5" ]; then
./pin.sh
#
elif [ $OPTIONS == "6" ]; then
./close.sh
else
clear
echo "Please enter a valid option (1 to 6)."
read
options
fi
exit
}
options