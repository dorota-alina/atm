clear
echo "Loading..."
sleep 1
clear
echo "                                       [DEPOSIT]"
echo
#
source logs/username.txt
echo "$username, how much you'd like to deposit in PLN?"
echo
read DEPOSIT
if [ $DEPOSIT -lt 1001 ]; then
clear
echo "$username, do you confirm the desposit of $DEPOSIT? [Y/N]"
echo
read CONFIRMED
else 
clear
echo "You can deposit max 1000 PLN."
read
./deposit.sh
fi
#
if [[($CONFIRMED == "Y" || $CONFIRMED == "y")]];
then
clear
echo "Depositing $DEPOSIT PLN... Thanks for your patience!"
source logs/balance.txt
export NEW_BALANCE=$(($balance +$DEPOSIT))
echo 'balance='$NEW_BALANCE > logs/balance.txt
echo "$username, you deposited $DEPOSIT PLN on: "$(date +%A,%d/%m/%Y) "at" $(date +%T)>> logs/transactions.txt
sleep 2
./menu.sh
#
elif [[($CONFIRMED == "N" || $CONFIRMED == "n")]];
then
./menu.sh
else 
#
clear
echo "Please enter Y/N."
read
./deposit.sh
fi
exit
