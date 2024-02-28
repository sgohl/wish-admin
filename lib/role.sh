Role() {

	Guard || return 1
 
	ROLE="${1}"

	if [[ ! -f ${DBF}/roles/${ROLE}/$(LoggedUser) ]] || ! LoggedUser >/dev/null
	then

		echo "401 unauthorized."
		return 1

	fi

}

RolesAll() {

	for ROLE in $(ls -d1 ${DBF}/roles/*)
	do
		echo $(basename ${ROLE})
	done

}

RoleUsers() {

	ROLE="${1}"

	if [[ "$(ls -A ${DBF}/roles/${ROLE})" ]]
	then

		for USER in $(ls -1 ${DBF}/roles/${ROLE}/*)
		do
			echo $(basename ${USER})
		done

	fi

}
