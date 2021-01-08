clear
echo "Loading..."
sleep 1
clear
echo "                                       [BALANCE]"
echo
#
source logs/username.txt
echo "$username, your current balance is "
source logs/balance.txt
echo $balance
echo "PLN."
#
echo
echo "|OK| "
read
./menu.sh
exit
