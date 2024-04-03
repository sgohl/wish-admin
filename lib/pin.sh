PinsAll() {

	if [[ -d ${DBF}/pin ]] && [[ $(ls -1 ${DBF}/pin | wc -l) -eq 0 ]]
	then
		return 1
	fi
	
	for PIN in $(ls -1 ${DBF}/pin/*)
	do
		echo ${PIN}
	done

}
