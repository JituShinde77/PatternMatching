echo "Welcome to user registration.."
shopt -s extglob


#bash -O globasciiranges -c 'echo [A-Z]*'

#namePattern="^[A-Z][a-z]{2,}$"
namePattern="^[ABCDEFGHIJKLMNOPQRSTUVWXYZ][a-z]{2,}$"
emailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+([.][a-zA-Z]{2,3}){1,2}$"
nameErrorMsg="Invalid name format Name Start with Capital and minimum 3 characters."

function validate()
{
	if [[ $1 =~ $2 ]]
	then
  		echo "Yes"
	else
       		echo $3
	fi
}

read -p "Enter the first name: " name
validate $name $namePattern "${nameErrorMsg}"

read -p "Enter the Last name: " lname
validate $lname $namePattern "${nameErrorMsg}"

read -p "Enter the email Address: " email
errorMessage="Invalid Email Please Enter the valid email address"
validate $email $emailPattern "${errorMessage}"
