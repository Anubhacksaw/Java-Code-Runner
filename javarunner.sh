sf (){
	vim $a.java
echo "___Press 1 if you wrote your code___"
read b 
if [ "$b" = "1" ]; then
com	
fi
return 0
}
com (){
	javac $a.java 
	c=$?
	if [ "$c" = "1" ]; then
	echo "Plz fix the error and try again"
	echo "___________________________________"
	echo "_____opening your editor in 5s_____"
	sleep 5
	sf
	else
		echo "___Your Output file___"
		java $a
		break
	fi
}
echo "\033[41;5m𝓙𝓐𝓥𝓐 𝓡𝓤𝓝𝓝𝓔𝓡         \033[0m"
echo "\033[33mGive same name to the class and the file\033[0m"
echo "Enter the file name: "
read a 
sf
while :
do
echo " "
echo "--------------------------"
echo "1. I want to edit my code"
echo "2.run again"
echo "3.Exit"
echo "--------------------------"
echo " "
read c
case $c in
	1 )
		sf
		;;
	2 )
	java $a
		;;
	3 )
		echo "\033[42;5m _____Exiting_____\033[0m"
		echo "\033[44;5m@Anubhab\033[0m"
		echo "\033[33mhttps://github.com/Anubhab-ai\033[0m"
		exit 0
		;;
esac
done
