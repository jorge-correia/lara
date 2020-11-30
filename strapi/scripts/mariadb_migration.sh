## DUMB MARIADB MIGRATION

if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]
then
	echo 'USAGE: ./migration_insert.sh USERNAME PASSWORD DATABASE_NAME'
	echo 'EXAMPLE: ./migration_insert.sh user pass strapi'
else
	echo '[*] Starting migration'
	mysqldump --user=$1 --password=$2 --databases $3 > tmp.sql
	cp tmp.sql ../sql_sample/lara_database_full.sql


	echo '[*] Generating inserts'
	rm ../sql_sample/lara_database_inserts.sql
	while IFS= read -r line;
	do
		str=$(echo $line | grep 'INSERT.*;')
		if [ $(echo $str | wc -c) -gt 1 ]
		then
			echo $str >> ../sql_sample/lara_database_inserts.sql
		fi
	done < tmp.sql
	echo '[+] Done inserts'

	echo '[*] Generating database'
	rm ../sql_sample/lara_database_creation.sql
	while IFS= read -r line;
	do
		str=$(echo $line | sed -e 's/INSERT.*//g')
		if [ $(echo $str | wc -c) -gt 1 ]
		then
			echo $str >> ../sql_sample/lara_database_creation.sql
		fi
	done < tmp.sql
	echo '[+] Done database'

	echo '[*] Cleaning'
	rm tmp.sql
	echo '[+] Done cleaning'
fi
