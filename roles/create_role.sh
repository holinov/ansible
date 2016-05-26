#!/bin/sh

role=$1

if [ -z "$role" ]
  then
    echo "No role name.\n USAGE:\n\t create_role \$ROLE_NAME"
    exit 1
fi

role_path=./$role

if [ -e "$role_path" ]
  then
    echo "Role exist!"
    exit 2
fi

echo "Create role: $role"
mkdir -p $role_path/{files,handlers,meta,templates,tasks,vars}
cd $role_path
touch handlers/main.yml meta/main.yml vars/main.yml tasks/main.yml
echo "Role created"
