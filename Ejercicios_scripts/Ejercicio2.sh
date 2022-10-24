NANO añadedomip
#!/bin/bash
echo 'Escriba nombre de dominio'
read domin
echo 'Escriba una ip para añadir'
read ipnew
if  grep -q -w $domin ./etc/hosts 

then 
	echo 'El dominio y/o el nombre ya existen'
else
	echo "$ipnew $domin" >> ./etc/hosts
fi
