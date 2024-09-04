Role admin || Redirect

case ${COMMAND} in

	users)

		case ${ARGS} in

			rm)

				if [[ -f ${DBF}/roles/${r}/${u} ]]
				then
					rm -f ${DBF}/roles/${r}/${u}
				fi
				
				Redirect back

			;;

			addrole)

				touch ${DBF}/roles/${v_role}/${v_user}
	
				Redirect back

			;;

		esac

	;;

        roles)

 		case ${ARGS} in

   			add)

      				mkdir -p ${DBF}/roles/${v_role}
	  
	  		;;
     		esac
	
 ;;

esac
