clear
echo "Loading..."
sleep 1
clear
echo "                                       [WITHDRAWAL]"
echo
#
source logs/password.txt
echo "$username, how much you'd like to withdraw in PLN?"
read SUBTRACT

if [[($SUBTRACT -gt 1000)]]; then
clear
echo "Max 1000 PLN!"
read
./menu.sh
else
clear
echo "$username, do you confirm $SUBTRACT PLN? [Y/N] "
read CONFIRMED 
clear
fi
#
source logs/balance.txt
if [[($SUBTRACT -gt $balance)]]; then
clear
echo "Your funds are insufficient. Sorry!"
read
./withdrawal.sh
else
clear
echo "$username, do you confirm $SUBTRACT PLN? [Y/N] "
read CONFIRMED
fi
#
if [[($CONFIRMED == "Y" || $CONFIRMED == "y")]];
then
clear
echo -n "Withrawing $SUBTRACT PLN... Thanks for your patience!"
source logs/balance.txt
export NEW_BALANCE=$(($balance - $SUBTRACT))
echo 'balance='$NEW_BALANCE > logs/balance.txt
echo "$username, you withdrew $SUBTRACT PLN on: "$(date +%A,%d/%m/%Y) "at" $(date +%T)>> logs/transactions.txt
sleep 2
./menu.sh
#
elif [[($CONFIRMED == "N" || $CONFIRMED == "n")]];
then
./menu.sh
else 
clear
echo -n "Please enter Y or N."
read
./withdrawal.sh
fi
exit 0