#!/bin/bash
# подключаем файл с функциями
 source "/home/constantin/sms/functions"

# пробы..
#connect "LOAD XML INFILE '/home/constantin/sms/20180922_08_IPK_ooo-ukp-ber-1.xml' INTO TABLE curr_indic;"
#connect "LOAD XML LOCAL INFILE '/home/constantin/sms/20180922_08_IPK_ooo-ukp-ber-1.xml' INTO TABLE person ROWS IDENTIFIED BY '<РАЗДЕЛ1>';"
#connect "LOAD XML INFILE '/home/constantin/sms/short_var.xml' INTO TABLE person;"
#connect "LOAD XML INFILE '/home/constantin/sms/20180922_08_IPK_ooo-ukp-ber-1.xml' INTO TABLE person;"
#connect "LOAD XML LOCAL INFILE '/var/lib/mysql-files/20180922_08_IPK_ooo-ukp-ber-1.xml' INTO TABLE person ROWS IDENTIFIED BY '<РАЗДЕЛ1>';"

# рабочий процесс
# копируем хмл в разрешенное место
# пошла возня!
connect "LOAD XML INFILE '/var/lib/mysql-files/all_ipk.xml' INTO TABLE person ROWS IDENTIFIED BY '<razdel1>';"
connect "LOAD XML INFILE '/var/lib/mysql-files/all_ipk.xml' INTO TABLE money ROWS IDENTIFIED BY '<razdel4>';"
connect "LOAD XML INFILE '/var/lib/mysql-files/all_ipk.xml' INTO TABLE data_indic ROWS IDENTIFIED BY '<string>';"
# не катит из другой дир
#connect "LOAD XML INFILE '/home/constantin/sms/all_ipk.xml' INTO TABLE money ROWS IDENTIFIED BY '<razdel2>';"
