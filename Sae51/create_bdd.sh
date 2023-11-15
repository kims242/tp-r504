mysql -h 127.0.0.1 -u root -p'root' -P 3306 -e "SET FOREIGN_KEY_CHECKS=0;" < shared/bdd1.sql
 mysql -h 127.0.0.1 -u root -p'root' -P 3306 < filldb.sql
