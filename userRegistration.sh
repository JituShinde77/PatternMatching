echo "Welcome to user registration.."
shopt -s extglob

#bash -O globasciiranges -c 'echo [A-Z]*'

#namePattern="^[A-Z][a-z]{2,}$"
namePattern="^[A-Z][a-z]{2,}$"
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

read -p "Enter the Last name: " name
validate $name $namePattern "${nameErrorMsg}"


