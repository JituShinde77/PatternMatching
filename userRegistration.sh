echo "Welcome to user registration.."
#shot -s extglob

#namePatt="^[A-Z][a-z]{2,}$"
read -p "Enter the name: " name
namePatt="^[A-Z]{1}[a-z]{2,}$"
nameErrorMsg="Invalid name format First name Start with Capital and minimum 3 characters."

if [[ $name =~ $namePatt ]]
then
  	echo "Yes"
else
       	echo nameErrorMsg
fi


