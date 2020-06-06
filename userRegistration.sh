echo "Welcome to user registration.."
shopt -s extglob


#bash -O globasciiranges -c 'echo [A-Z]*'

namePattern="^[A-Z][a-z]{2,}$"

#namePattern="^[ABCDEFGHIJKLMNOPQRSTUVWXYZ][a-z]{2,}$"
#namePattern="^[[:upper:]][a-z]{2,}$"

emailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+([.][a-zA-Z]{2,3}){1,2}$"

phonePattern="^[0-9]{2}[[:space:]][0-9]{10}$"

passwordPattern="^(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"
passwordPattern="[[${#s} -ge 6 && "$s" == *[A-Z]* && "$s" == *[a-z]* && "$s" == *[0-9]* ]]"

function validate()
{

	if [[ ${1} =~ $2 ]]
	then
  		echo "Yes"
	else
       		echo $3
	fi
}


#read -p "Enter the first name: " name
#nameErrorMsg="Invalid name format Name Start with Capital and minimum 3 characters."
#validate $name $namePattern "${nameErrorMsg}"

#read -p "Enter the Last name: " lname
#validate $lname $namePattern "${nameErrorMsg}"

#read -p "Enter the email Address: " email
#errorMessage="Invalid Email Please Enter the valid email address"
#validate $email $emailPattern "${errorMessage}"

#read -p "Enter the phone number: " phoneNumber
#errorMessage="Invalid Phone Number.."
#validate "$phoneNumber" $phonePattern "${errorMessage}"


## Regex password validation in Bash shell
## https://stackoverflow.com/questions/20845497/regex-password-validation-in-bash-shell

function validatePassword()
{
        if [[ ${#1} -ge 8 && "$1" == *[A-Z]* && "$1" == *[a-zA-Z]* ]]
        then
                echo "Correct"
        else
                echo "Wrong Password.."
        fi
}

read -p "Enter the password:" password
errorMessage="Invalid Password Enter minimum 8 character"
validatePass $password
