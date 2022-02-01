#!/bin/bash
if [[ $(id -u) -ne 0 ]] ; then echo "Må kjøres som ROOT" ; exit 1 ; fi

printf "FORSIKTIG - dette skriptet viser INGEN nåde"
printf "Det finnes INGEN søppelkurv eller angreknapp."
read -p "Target directory: " target
printf "\n"
read -p "Sikker på du vil slette $target? (Y/n): " yn
case $yn in
    [Yy]* ) echo "Sletter $target"
            sudo rm -r /var/www/html/$target
            echo "DROP DATABASE $target;" | mysql -uroot
            echo "FLUSH PRIVILEGES;" | mysql -uroot;;
    * ) echo "Hoppet over sletting";;
esac
