clear
echo 'Loading...'
sleep 3
clear
echo "Welcome to the Bank of No Hope! "
echo
echo "Username: "
read USERNAME
#
source logs/username.txt
if [[($USERNAME == "$username")]];
then
echo
echo "Password: "
read PASSWORD
#
else 
clear
echo "Incorrect username"
sleep 2
clear
./login.sh
fi
#
source logs/password.txt
if [[($PASSWORD == "$password")]];
then
clear
echo "$username, you have sucessfully logged in."
sleep 2
./menu.sh 
exit
#
elif [[($PASSWORD != "$password")]]; then
clear
echo "Incorrect password"
sleep 2
clear
./login.sh
else
exit 0
fi
clear
exit 0