clear
echo "Loading..."
sleep 1
clear
echo "                                       [TRANSACTIONS]"
echo
#
for transactions in [1]_Withdrawals [2]_Deposits [3]_All_Transactions [4]_Exit
do
echo "$transactions"
done
echo
echo "What are you interested in? Please enter option 1 - 4. "
#
read TRANSACTIONS
#
if [[($TRANSACTIONS == "1")]]; then
clear
echo "                                       [WITHDRAWALS]"
echo
grep 'withdrew' logs/transactions.txt
echo
echo "|OK| "
read
./transactions.sh
#
elif [[($TRANSACTIONS == "2")]]; then
clear
echo "                                       [DEPOSITS]"
echo
grep 'deposited' logs/transactions.txt
echo
echo "|OK| "
read
./transactions.sh
#
elif [[($TRANSACTIONS == "3")]]; then
clear
echo "                                       [ALL TRANSACTIONS]"
echo
grep 'deposited' logs/transactions.txt
grep 'withdrew' logs/transactions.txt
echo
echo "|OK| "
read
./transactions.sh
#
elif [[($TRANSACTIONS == "4")]]; then
./menu.sh
#
else
clear
echo "Please enter option 1 - 4. "
read
./transactions.sh
fi
#
exit
