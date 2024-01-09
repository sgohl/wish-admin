# wish-admin

admin plugin for wiSH (https://github.com/sgohl/wiSH)

## install

```
wish plug admin https://github.com/sgohl/wish-admin.git
```

Main purpose:

- roles (restrict resources to be available only for members of a role with function `Role`)
- role management ui

UI/API Functions:

- list roles with members
- add a role
- add member to a role
- remove member from a role

TBD:

- role as member of another role (deep/recursive role membership)
- when adding a member to a role, add dropdown menu listing all "seen users" 

Members are just strings and is directly compared to the session username.
There is no members/users database or sync with any user directory like LDAP/AD, and I do not plan to implement this, as there are too many different user directory implementations out there.
