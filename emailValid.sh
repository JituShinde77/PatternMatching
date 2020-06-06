echo "Welcome Email.com validation"

emailPattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+([.][a-zA-Z]{2,3}){1,2}$"

declare -a valid
valid=("abc@yahoo.com" "abc-100@yahoo.com" "abc.100@yahoo.com" "abc111@abc.com" "abc-100@abc.net" "abc.100@abc.com.au" "abc@1.com" "abc@gmail.com.com" "abc+100@gmail.com")

declare -a invalid
invalid=("abc" "abc@.com.my" "abc123@gmai.a" "abc123@.com" "abc123@.com.com" ".abc@abc.com" "abc()*@gmail.com" "abc@%*.com" "abc..2002@gmail.com"
	"abc.@gcom.my" "abc@abc@gmail.com" "abc@gmail.com.1a" "abc@gmail.com.1a")

function validate()
{
	arr=("$@")
	for i in "${arr[@]}"
	do
		echo $i
		if [[ $i =~ $emailPattern ]]
		then
			echo "Valid"
		else
			echo "Invalid"
		fi
	done
}

validate "${valid[@]}"
validate "${invalid[@]}"

