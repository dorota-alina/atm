clear
echo "Loading..."
sleep 1
clear
echo "                                       [CHANGE PASSWORD]"
echo
#
clear
echo "Enter the current password to be changed."
echo
echo "Password: "
read PASSWORD
#
source logs/password.txt
if [[($PASSWORD == "$password")]];
then
echo "Enter your new password."
echo
read NEWPASS
#
clear
echo "Changing your password... Thanks for your patience!"
source logs/password.txt
source logs/username.txt
export $NEWPASS
echo 'password='$NEWPASS > logs/password.txt
echo "$username, you changed your password on: "$(date +%A,%d/%m/%Y) "at" $(date +%T)>> logs/transactions.txt
echo "$username, you have sucessfully changed your password!"
sleep 2
./menu.sh
else 
#
clear
echo "Incorrect password! Please try again."
read
./pin.sh
fi
exit