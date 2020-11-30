## DUMB MARIADB MIGRATION

if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]
then
	echo 'USAGE: ./migration_insert.sh USERNAME PASSWORD DATABASE_NAME'
	echo 'EXAMPLE: ./migration_insert.sh user pass strapi'
else
	mysqldump --user=$1 --password=$2 --databases $3 > tmp.sql
	echo $(cat tmp.sql | grep 'INSERT.*;') > ../sql_sample/lara_database_inserts.sql
	echo $(cat tmp.sql | sed -e 's/INSERT.*//g') > ../sql_sample/lara_database_creation.sql
	rm tmp.sql
fi
